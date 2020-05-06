# frozen_string_literal: true

class ScorecardPeriod < ApplicationRecord
  validates :period, uniqueness: true

  scope :active, -> { where(status: true).order(:period) }
  scope :last_published_at_year, ->(year) {
    where('EXTRACT(year FROM period) = ? AND status = TRUE', year).order(:period)
        .last&.period || active.last.period
  }
  scope :first_published_at_year, ->(year) {
    where('EXTRACT(year FROM period) = ? AND status = TRUE', year).minimum(:period) || active.first.period
  }
  def self.published(period)
    find_by(period: period, status: true)&.period
  end
end
