# frozen_string_literal: true

class Cpo < ApplicationRecord
  belongs_to :dealer
  has_one :take, class_name: 'CpoTake'
  has_one :appraisal, class_name: 'CpoAppraisal'
  has_one :sale, class_name: 'CpoSale'
  accepts_nested_attributes_for :take, :appraisal, :sale

  scope :registers, -> {
    joins(:dealer, :take, :appraisal, :sale)
        .select('
          cpos.id AS cpo_id,
          dealers.name,
          dealers.code,
          cpo_takes.id AS take_id,
          cpo_takes.hyundai AS takes_hyundai,
          cpo_takes.others AS takes_others,
          cpo_appraisals.id AS appraisal_id,
          cpo_appraisals.hyundai AS appraisals_hyundai,
          cpo_appraisals.others AS appraisals_others,
          cpo_sales.id AS sale_id,
          cpo_sales.preowned AS sales_preowned,
          cpo_sales.promise AS sales_promise,
          status,
          cpos.period
        ')
        .order('dealers.name')
  }

  def self.create_cpos(period)
    dealers = Dealer.active_dealers(period, period)

    dealers.each do |dealer|
      cpo = Cpo.find_or_create_by(period: period, dealer: dealer)
      CpoSale.find_or_create_by(cpo: cpo)
      CpoTake.find_or_create_by(cpo: cpo)
      CpoAppraisal.find_or_create_by(cpo: cpo)
    end
  end

  def self.activate_cpo(period, status)
    Cpo.where(period: period).update_all(status: status)
  end
end
