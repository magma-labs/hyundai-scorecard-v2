class ChangeGoalToBeFloatInDealersKpis < ActiveRecord::Migration[5.2]
  def change
    change_column :dealers_kpis, :goal, :float
  end
end
