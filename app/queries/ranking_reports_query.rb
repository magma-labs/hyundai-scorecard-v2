# frozen_string_literal: true

class RankingReportsQuery
  def reports_ranking(period)
    query = DealersKpi.select('*').from(total_points_and_period(period))
    query = query.joins("INNER JOIN (#{tie_breakers(period,
                                                    Kpi.ssi_tie_breaker(period)).to_sql}) AS dealers_ssi
                          ON dealer_id_base = dealers_ssi.dealer_id")
    query = query.joins("INNER JOIN (#{tie_breakers(period,
                                                    Kpi.csi_tie_breaker(period)).to_sql}) AS dealers_csi
                          ON dealers_ssi.dealer_id = dealers_csi.dealer_id")
    query = query.joins("INNER JOIN (#{dealer_info(period).to_sql}) AS dealers_info
                          ON dealers_info.dealer_id = dealers_csi.dealer_id")
    query = query.joins("INNER JOIN (#{zones_info(period).to_sql}) AS zone_names
                          ON zone_names.id = dealers_info.zone_id")
    query.order('dealer_total_points DESC,
                         dealers_ssi.tie_breaker_sales DESC,
                         dealers_csi.tie_breaker_post DESC')
  end

  def dealers_kpi_base
    DealersKpi
  end

  def total_points_and_period(period)
    dealers_kpi_base.select('dealer_id AS dealer_id_base, MAX(period) AS period,
                             SUM(points) AS dealer_total_points')
        .where('period = ? AND points IS NOT NULL', period)
        .group('dealer_id')
  end

  def tie_breakers(period, kpi)
    dealers_kpi_base.select("dealer_id,
      CASE WHEN score ->> 'numeric' IS NOT NULL AND score ->> 'numeric' <> ''
        THEN
          (score ->> 'numeric')::numeric
        ELSE
          0
      END AS #{find_kpi_frontend_class(kpi)}")
        .where("period = ? AND calculator_id = #{kpi.id}", period)
        .group('dealer_id, score')
  end

  def dealer_info(period)
    Dealer.select('id AS dealer_id, name, code, zone_id')
        .active_dealers(period, period)
  end

  def find_kpi_frontend_class(kpi)
    kpi.frontend_class == 'CustomerSatisfactionSalesSSI' ? 'tie_breaker_sales' : 'tie_breaker_post'
  end

  def zones_info(_period)
    Zone.select('id, name AS zone_name')
  end
end
