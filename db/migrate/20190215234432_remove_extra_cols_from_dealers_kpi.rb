class RemoveExtraColsFromDealersKpi < ActiveRecord::Migration[5.2]
  def change
    remove_column :dealers_kpis, :goal, :integer
    remove_column :dealers_kpis, :percentage, :integer
  end
end
