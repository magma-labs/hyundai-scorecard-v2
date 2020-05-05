class CreateForecastRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :forecast_registers do |t|
      t.references :forecast, foreign_key: true
      t.boolean :status
      t.integer :score
      t.integer :day
      t.integer :last_day_sales

      t.timestamps
    end
  end
end
