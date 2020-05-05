class AddDeadlineToDealers < ActiveRecord::Migration[5.2]
  def change
    add_column :dealers, :deadline, :date
  end
end
