class AddMissingFieldsToDealers < ActiveRecord::Migration[5.2]
  def change
    add_column :dealers, :email, :string
    add_column :dealers, :address, :string
    add_column :dealers, :manager, :string
  end
end
