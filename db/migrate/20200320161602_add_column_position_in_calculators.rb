class AddColumnPositionInCalculators < ActiveRecord::Migration[5.2]
  def change
    add_column :calculators, :position, :integer
  end
end
