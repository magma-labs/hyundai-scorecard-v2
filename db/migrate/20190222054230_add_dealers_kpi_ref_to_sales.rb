class AddDealersKpiRefToSales < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales, :dealers_kpi, foreign_key: true
  end
end
