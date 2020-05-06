# frozen_string_literal: true

class CpoPolicy < ApplicationPolicy
  def index?
    user.Admin?
  end

  def admin?
    user.Admin?
  end

  def dealer?
    user.Dealer?
  end

  class Scope < Scope
    def resolve
      if @user.Admin?
        scope.all
      else
        scope.where('cpos.status = TRUE')
      end
    end
  end
end
