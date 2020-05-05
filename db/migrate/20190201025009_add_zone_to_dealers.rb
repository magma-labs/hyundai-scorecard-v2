class AddZoneToDealers < ActiveRecord::Migration[5.2]
  def change
    add_reference :dealers, :zone, foreign_key: true
  end
end
