# frozen_string_literal: true

class Sale < ApplicationRecord
  belongs_to :dealer
  belongs_to :dealers_kpi
  validates :period, presence: true

  def self.create_period_sales(period: nil)
    return [] if period.nil?
    return unless Sale.find_by(period: period).nil?

    kpi = Kpi.find_by(name: 'Cumplimiento de objetivo de ventas')
    sales_kpis = DealersKpi.where(
      period: period,
      calculator: kpi.current_calculator(period)
    )
    return false, 'There are not DealersKpis registers for this period' if sales_kpis.empty?

    sales_kpis.each do |register|
      Sale.create(
        dealers_kpi: register,
        dealer: register.dealer,
        period: register.period,
        goal: register.goal
      )
    end
    Sale.where(period: period)
  end
end
