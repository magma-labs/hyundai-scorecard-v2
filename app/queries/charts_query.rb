# frozen_string_literal: true

class ChartsQuery
  def single_kpi_column_chart(kpi_id, initial_period, final_period, dealers)
    query = add_column_chart_fields(base_query)
    query = add_common_constraints(query, kpi_id, initial_period, final_period)
    query = limit_dealers(query, dealers)
    query.group('dealer_id').order('completed_percentage DESC')
  end

  def single_kpi_linear_chart(kpi_id, dealer_id, initial_period, final_period)
    query = add_linear_chart_fields(base_query)
    query = add_common_constraints(query, kpi_id, initial_period, final_period)
    query = query.where(dealer_id: dealer_id) if dealer_id.present?
    query.group('period').order('period ASC')
  end

  protected

  def base_query
    DealersKpi.joins(:calculator)
  end

  def limit_dealers(query, dealers)
    query.where(dealer: dealers)
  end

  def add_common_constraints(query, kpi_id, initial_period, final_period)
    query = add_period_fields(query)
    add_filters(query, kpi_id, initial_period, final_period)
  end

  def add_column_chart_fields(query)
    query
        .select('dealer_id as id')
        .select('(SELECT name from dealers where id = dealer_id) as name')
  end

  def add_linear_chart_fields(query)
    query.select('period')
  end

  def add_filters(query, kpi_id, initial_period, final_period)
    query
        .where(calculator_id: kpi_id)
        .where('period BETWEEN ? AND ?', initial_period, final_period)
        .where('dealers_kpis.points IS NOT NULL')
  end

  # rubocop:disable Metrics/MethodLength
  def add_period_fields(query)
    query
        .select("
          CASE SUM(calculators.points)
          WHEN 0 then 0
          ELSE
            TRUNC((SUM(dealers_kpis.points) / SUM(calculators.points) * 100) * 10) / 10
          END AS completed_percentage
        ")
        .select('SUM(goal) AS period_goal')
        .select("
          SUM(
            CASE
              WHEN score ->> 'numeric' IS NOT NULL AND score ->> 'numeric' != '' THEN
                CAST(score ->> 'numeric' AS float)
              WHEN score ->> 'percentage' IS NOT NULL AND score ->> 'percentage' != '' THEN
                CAST(score ->> 'percentage' AS float)
              ELSE
                0
            END
          ) AS period_points
				")
        .select('SUM(dealers_kpis.points) AS dealers_period_points')
  end
  # rubocop:enable Metrics/MethodLength
end
