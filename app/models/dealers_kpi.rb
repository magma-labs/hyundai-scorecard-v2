# frozen_string_literal: true

class DealersKpi < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :calculator
  validates :period, presence: true
  has_one :sale

  scope :all_kpis, ->(begin_period, final_period) {
                     where('period BETWEEN ? AND ?', begin_period, final_period)
                   }

  scope :average_kpis_months, ->(begin_period, final_period) {
    select('dealers_kpis.period,((TRUNC((SUM(
		                    CASE
                          WHEN dealers.opening_date <= dealers_kpis.period
		                        AND( dealers.deadline >= dealers_kpis.period
			                           OR dealers.deadline IS NULL) THEN
                            dealers_kpis.points
		                      ELSE
                             0
                        END) /
                        COUNT( DISTINCT(
			                       CASE
                               WHEN dealers.opening_date <= dealers_kpis.period
			                           AND( dealers.deadline >= dealers_kpis.period
				                               OR dealers.deadline IS NULL) THEN dealers.name
                            END))) * 10 ))/ 10) AS monthly_average_network')
        .joins(:dealer)
        .where('dealers_kpis.dealer_id = dealers.id')
        .where('dealers_kpis.period BETWEEN ? AND ? ', begin_period, final_period)
        .where('points IS NOT NULL').group('period')
  }

  scope :average_kpis_month, ->(period) {
    select('dealers_kpis.period,((TRUNC((SUM(
		                    CASE
                          WHEN dealers.opening_date <= dealers_kpis.period
		                        AND( dealers.deadline >= dealers_kpis.period
			                           OR dealers.deadline IS NULL) THEN
                            dealers_kpis.points
		                      ELSE 0
                        END) /
                        COUNT( DISTINCT(
			                       CASE
                               WHEN dealers.opening_date <= dealers_kpis.period
			                           AND( dealers.deadline >= dealers_kpis.period
				                               OR dealers.deadline IS NULL) THEN dealers.name
                            END
		                    ))) * 10 ))/ 10) AS monthly_average_network')
        .joins(:dealer)
        .where('dealers_kpis.dealer_id = dealers.id')
        .where('dealers_kpis.period = ? ', period)
        .where('points IS NOT NULL')
        .group('period')
  }
  scope :by_kpi, ->(calculator_id) {
                   where('calculator_id = ?', calculator_id).where('dealers_kpis.points IS NOT NULL')
                 }
  scope :general_charts, -> {
                           group('period')
                               .select("(TRUNC((SUM(COALESCE(points, 0))/COUNT(DISTINCT dealer_id)) * 10)
                               / 10) AS monthly_average_network, period")
                               .order('period')
                         }

  scope :chart_pie_filters, ->(dealer_id, initial_period, final_period) {
    joins(:dealer, calculator: [:kpi])
        .group('dealers.name, kpis.name')
        .where(dealer_id: dealer_id, period: initial_period..final_period)
  }

  scope :for_charts, -> {
    select('dealers.name, TRUNC(SUM(dealers_kpis.points)/ COUNT(DISTINCT(period)) * 10) / 10
        AS average_points, kpis.name, MAX(kpis.id) as kpi_id, MAX(calculators.frontend_class)
        AS frontendClass, MAX(calculators.points) AS points')
  }

  scope :for_totals, -> {
    select('dealers.name, SUM(dealers_kpis.points)/ COUNT(DISTINCT(period))
        AS average_points, kpis.name, MAX(kpis.id) as kpi_id, MAX(calculators.frontend_class)
        AS frontendClass')
  }

  scope :order_by_kpi, -> { joins(:calculator).order('MAX(calculators.position) ASC') }

  scope :dealer_list_dropdown, -> {
    joins(:dealer).select('DISTINCT(name) AS NAME, dealers.id').where.not(points: nil).order('name')
  }

  scope :periods_with_points, -> {
    select('DISTINCT(period) AS period').where.not(points: nil).order(:period)
  }

  scope :maximum_period_with_registers, -> { where.not(points: nil).maximum(:period) }

  store_accessor :score, :completed?, :scored
  def self.create_period_kpis(period)
    return if period.nil? || DealersKpi.find_by(period: period)

    kpis = Kpi.active_on(period)
    dealers = Dealer.where(deadline: nil)
    dealers.each do |dealer|
      kpis.each do |kpi|
        dk = DealersKpi.create(dealer: dealer, calculator: kpi.current_calculator(period), period: period)
        dk.score = { numeric: nil, percentage: nil }
        dk.save
      end
    end
    DealersKpi.where(period: period)
  end
end
