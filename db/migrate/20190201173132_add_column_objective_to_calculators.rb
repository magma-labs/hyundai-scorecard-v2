class AddColumnObjectiveToCalculators < ActiveRecord::Migration[5.2]
  def change
    add_column :calculators, :objective, :jsonb
  end
end
