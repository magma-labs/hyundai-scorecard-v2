class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |t|
      t.date :period
      t.integer :goal
      t.integer :last_month
      t.integer :last_year
      t.references :dealer, foreign_key: true

      t.timestamps
    end
  end
end
