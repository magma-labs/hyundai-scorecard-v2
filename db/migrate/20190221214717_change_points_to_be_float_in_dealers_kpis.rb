class ChangePointsToBeFloatInDealersKpis < ActiveRecord::Migration[5.2]
  def change
    change_column :dealers_kpis, :points, :float
  end
end
