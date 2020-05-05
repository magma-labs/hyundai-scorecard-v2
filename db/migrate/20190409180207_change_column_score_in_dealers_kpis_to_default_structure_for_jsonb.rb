class ChangeColumnScoreInDealersKpisToDefaultStructureForJsonb < ActiveRecord::Migration[5.2]
  def change
    change_column_default :dealers_kpis, :score, {"numeric"=>nil, "percentage"=>nil}
  end
end
