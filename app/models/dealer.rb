# frozen_string_literal: true

# rubocop:disable Metrics/ClassLength
class Dealer < ApplicationRecord
  validates :code, uniqueness: true
  validates :name, presence: true
  has_many :sales, dependent: :delete_all
  has_many :monthly_kpis, class_name: 'DealersKpi', dependent: :delete_all
  has_many :cpos
  belongs_to :zone
  belongs_to :group
  belongs_to :postsales_dm, optional: true
  has_one_attached :avatar
  has_and_belongs_to_many :users
  has_many :forecasts
  attr_accessor :create_period

  scope :active_dealers, ->(opening_date, closing_date) {
                           where('opening_date <= ?
                               and (deadline >= ? or deadline IS NULL)', opening_date, closing_date)
                         }
  scope :by_city, ->(city) { where('city ILIKE ? ', "%#{city}%") }
  scope :by_closing_date, ->(closing_date) { where('opening_date <= ? ', (closing_date + '-12-31')) }
  scope :by_code, ->(code) { where(code: code) }
  scope :by_group, ->(group) { where(group_id: group) }
  scope :by_kpi, ->(calculator_id) {
    group('calculator_id').where!('dealers_kpis.calculator_id = ?', calculator_id)
  }

  scope :by_name, ->(name) { where('name ILIKE ? ', "%#{name}%") }
  scope :by_opening_date, ->(opening_date) { where('opening_date >= ? ', (opening_date + '-01-01')) }
  scope :by_period, ->(begin_period, final_period) {
                      charts_by_month.where('period BETWEEN ? AND ?', begin_period, final_period)
                          .order('dealers_total_points DESC').where('points IS NOT NULL')
                    }
  scope :by_state, ->(state) { where('state ILIKE ? ', "%#{state}%") }
  scope :by_zone, ->(zone) { where(zone_id: zone) }
  scope :charts_by_month, -> {
                            joins(:monthly_kpis).group('id')
                                .select("(TRUNC((SUM(points)/ COUNT(DISTINCT(period))) * 10) / 10)
                                 AS dealers_total_points, dealers.id AS id,
                                          dealers.name, dealers.code")
                          }
  scope :filter_by_day, ->(selected_day) { where('forecast_registers.day = ?', selected_day) }

  scope :filter_by_group, ->(group_id) { where('groups.id = ?', group_id) }

  scope :filter_by_zone, ->(zone_id) { where('zones.id = ?', zone_id) }
  scope :forecast_registers, ->(selected_period) {
    joins(:zone, :group, forecasts: :registers)
        .order('zones.name ASC, groups.name ASC, dealers.code')
        .select('
                forecasts.id AS id,
                dealers.name,
                dealers.code,
                zones.name AS zone_name,
                groups.name AS group_name,
                goal,
                last_month,
                forecast_registers.last_day_sales,
                forecast_registers.id AS register_id,
                status,
                score,
                day
                ')
        .where('forecasts.period = ?',
               selected_period)
  }

  scope :reports, ->(filter_params) {
                    joins(:monthly_kpis, :zone, :group)
                        .group(:id, :period)
                        .order('dealers.code')
                        .select('COALESCE(SUM(points), 0) AS dealer_total_points,
                          period, dealers.id AS id, dealers.name, dealers.code,
                          MAX(groups.name) AS group_name, dealers.opening_date, MAX(calculator_id),
                          MAX(zones.name) AS zone_name')
                        .where('period = :date AND ( deadline >= :date OR
                         deadline IS NULL) AND points IS NOT NULL',
                               date: filter_params)
                  }

  scope :yearly_average, ->(beginning_year, selected_period) {
    joins(:monthly_kpis)
        .group(:id)
        .select('SUM(points)/COUNT(DISTINCT period) AS dealer_total_points,
          dealers.id as dealer_id_first, dealers.name, dealers.code')
        .where('period BETWEEN ? AND ?', beginning_year, selected_period)
        .where('points IS NOT NULL')
  }

  scope :scores_all_year, ->(beginning_year, selected_period, front_class) {
    joins(monthly_kpis: [:calculator])
        .group(:id)
        .select("dealers.id AS dealer_id, dealers.name, dealers.code,
         SUM(COALESCE(CASE WHEN score->>'numeric' = ''
                        THEN '0' ELSE score->>'numeric' END, '0')::DECIMAL) /
                        COUNT(DISTINCT period) AS
                        dealer_total_scores_#{front_class == 'CustomerSatisfactionSalesSSI' ? 'ssi' : 'csi'}")
        .where('period BETWEEN ? AND ?', beginning_year, selected_period)
        .where('calculators.frontend_class = ?', front_class)
  }

  def create_kpis(period:)
    Kpi.active_on(period).each do |kpi|
      monthly_kpis.create(calculator: kpi.current_calculator(period), period: period)
    end
  end

  def create_sales(period:, dealer:)
    kpi = Kpi.find_by(name: 'Cumplimiento de objetivo de ventas').calculators
    dealers_kpi = DealersKpi.find_by(period: period, dealer_id: dealer[:id], calculator: kpi)
    sales.create(period: period, dealers_kpi: dealers_kpi)
  end
end
# rubocop:enable Metrics/ClassLength
