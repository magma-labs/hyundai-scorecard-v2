# frozen_string_literal: true

class ScorecardPolicy < ApplicationPolicy
  def show?
    user.Admin?
  end
end
