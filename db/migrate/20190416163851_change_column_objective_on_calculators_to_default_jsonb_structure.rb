class ChangeColumnObjectiveOnCalculatorsToDefaultJsonbStructure < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :calculators, :objective, {"numeric"=>nil, "percentage"=>nil}
  end
end
