class AddMoreMissingFieldsToDealers < ActiveRecord::Migration[5.2]
  def change
    add_column :dealers, :opening_date, :date
    add_column :dealers, :group, :string
  end
end
