# frozen_string_literal: true

class AnualRankingReportsQuery
  def initialize(period)
    @period = period
    @beginning_year ||= @period.year == 2020 ? Date.new(2020, 2) : @period.beginning_of_year
  end

  def anual_reports_ranking
    query = DealersKpi.select('*').from(active_dealers.yearly_average(@beginning_year, @period))
    query = query.joins("INNER JOIN (#{anual_scores_ssi.to_sql})
                        AS dealers_ssi ON dealer_id_first = dealers_ssi.dealer_id")
    query = query.joins("INNER JOIN (#{anual_scores_csi.to_sql})
                        AS dealers_csi ON dealers_ssi.dealer_id = dealers_csi.dealer_id")
    query.order('dealer_total_points DESC, dealer_total_scores_ssi DESC, dealer_total_scores_csi DESC')
  end

  def anual_scores_ssi
    active_dealers.scores_all_year(@beginning_year, @period, 'CustomerSatisfactionSalesSSI')
  end

  def anual_scores_csi
    active_dealers.scores_all_year(@beginning_year, @period, 'CustomerSatisfactionPostSaleCSI')
  end

  def active_dealers
    Dealer.active_dealers(@period, @period)
  end
end
