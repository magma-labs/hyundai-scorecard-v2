class CreateCpos < ActiveRecord::Migration[5.2]
  def change
    create_table :cpos do |t|
      t.references :dealer, foreign_key: true
      t.date :period
      t.boolean :status

      t.timestamps
    end
  end
end
