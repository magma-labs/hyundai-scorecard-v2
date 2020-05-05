class CreateDealers < ActiveRecord::Migration[5.1]
  def change
    create_table :dealers do |t|
      t.string :code, unique:true
      t.string :name, null: false

      t.timestamps
    end
  end
end
