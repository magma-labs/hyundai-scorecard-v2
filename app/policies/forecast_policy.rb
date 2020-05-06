# frozen_string_literal: true

class ForecastPolicy < ApplicationPolicy
  def index?
    user.Admin? || user.Dealer? || user.DM_Ventas?
  end

  def admin?
    user.Admin?
  end

  def dealer?
    user.Dealer?
  end

  def edit?
    user.Dealer? || user.Admin?
  end

  class Scope < Scope
    def resolve
      if @user.Admin? || @user.DM_Ventas?
        scope.all
      else
        scope.where('forecast_registers.status = TRUE')
      end
    end
  end
end
