class AddColumnNumberOfTotalColumnInCalculators < ActiveRecord::Migration[5.2]
  def change
    add_column :calculators, :total_columns, :integer, default: 2
  end
end
