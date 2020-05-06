# frozen_string_literal: true

class DealersKpiPolicy < ApplicationPolicy
  def update?
    user.Admin?
  end

  def create?
    user.Admin?
  end
end
