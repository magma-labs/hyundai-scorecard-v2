class AddIndexToCalculators < ActiveRecord::Migration[5.2]
  def change
    add_column :calculators, :index, :integer
  end
end
