class AddColumnGoalAndPercentageToDealersKpis < ActiveRecord::Migration[5.2]
  def change
    add_column :dealers_kpis, :goal, :integer
    add_column :dealers_kpis, :percentage, :integer
  end
end
