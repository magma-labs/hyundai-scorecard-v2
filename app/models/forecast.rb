# frozen_string_literal: true

class Forecast < ApplicationRecord
  belongs_to :dealer
  has_many :registers, class_name: 'ForecastRegister'

  accepts_nested_attributes_for :registers
  scope :by_period, ->(period) { where(period: period) }

  def self.create_forecasts(period, day)
    dealers = Dealer.active_dealers(period, period)

    dealers.each do |dealer|
      forecast = Forecast.find_or_create_by(period: period, dealer: dealer)
      forecast.registers.find_or_create_by(day: day)
    end
  end

  def self.activate_forecast(period, day, action)
    ForecastRegister.joins(:forecast)
        .where(day: day)
        .where('forecasts.period': period)
        .update_all(status: action)
  end
end
