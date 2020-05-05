class CreateCpoSales < ActiveRecord::Migration[5.2]
  def change
    create_table :cpo_sales do |t|
      t.belongs_to :cpo, index: { unique: true }, foreign_key: true
      t.integer :promise
      t.integer :preowned

      t.timestamps
    end
  end
end
