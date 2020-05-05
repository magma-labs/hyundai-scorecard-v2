class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :retail
      t.integer :demo
      t.integer :fleet
      t.integer :goal
      t.date :period
      t.references :dealer, foreign_key: true

      t.timestamps
    end
  end
end
