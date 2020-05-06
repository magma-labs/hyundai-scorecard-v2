# frozen_string_literal: true

class Calculator < ApplicationRecord
  belongs_to :kpi

  validates :frontend_class, :points, :index, :starts_on, presence: true

  before_validation :check_for_index
  before_validation :check_for_uniqueness_in_period

  scope :active_on, ->(date) {
    where('starts_on <= :date AND (ends_on > :date OR ends_on is null)', date: date)
  }

  scope :order_by_position, -> {
    reorder('position ASC')
  }

  delegate :name, to: :kpi, prefix: true

  private

  def check_for_index
    self.index ||= kpi.calculators.last.try(:index).to_i + 1
  end

  def check_for_uniqueness_in_period
    return if kpi.calculators.active_on(starts_on).where.not(id: id).count.zero?

    errors.add(:starts_on, 'Ya existe una calculadora para ese periodo')
  end
end
