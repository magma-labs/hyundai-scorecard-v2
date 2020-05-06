# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def index?
    user.executive?
  end

  def show?
    user.executive?
  end

  %w[create? new? update? edit? destroy? destroy_dealers_association?].each do |method|
    define_method(method) { user.Admin? }
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
