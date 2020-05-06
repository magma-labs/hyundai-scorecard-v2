# frozen_string_literal: true

class Kpi < ApplicationRecord
  validates :name, presence: true
  has_many :calculators
  default_scope { order(:id) }

  scope :ssi_tie_breaker, ->(period) {
    find_by(name: 'Satisfacción de clientes ventas SSI').current_calculator(period)
  }

  scope :csi_tie_breaker, ->(period) {
    find_by(name: 'Satisfacción de clientes Postventa CSI').current_calculator(period)
  }

  scope :order_by_calculator_positon, -> {
    joins(:calculators).reorder('calculators.position ASC').uniq
  }

  def current_calculator(period)
    calculators.active_on(period).first
  end

  def self.active_on(period)
    where(id: Calculator.active_on(period).map(&:kpi_id))
  end
end
