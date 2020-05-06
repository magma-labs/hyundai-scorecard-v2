# frozen_string_literal: true

class DealerPolicy < ApplicationPolicy
  def index?
    user.Dealer? || user.executive?
  end

  %w[create? new? update? edit? destroy?].each do |method|
    define_method(method) { user.Admin? }
  end

  def show?
    user.dealers.include?(record) || user.executive?
  end

  class Scope < Scope
    def resolve
      case @user.role
      when 'Admin', 'General'
        scope.all
      when 'Dealer'
        user.dealers
      when 'DM_Ventas'
        user.zone.dealers
      when 'DM_Postventas'
        user.postsales_dm.dealers
      end
    end
  end
end
