class AddGroupToDealers < ActiveRecord::Migration[5.2]
  def change
    add_reference :dealers, :group, foreign_key: true
  end
end
