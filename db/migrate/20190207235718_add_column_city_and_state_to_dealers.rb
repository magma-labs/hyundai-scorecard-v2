class AddColumnCityAndStateToDealers < ActiveRecord::Migration[5.2]
  def change
    add_column :dealers, :city, :string
    add_column :dealers, :state, :string
  end
end
