class CreateDealersKpis < ActiveRecord::Migration[5.1]
  def change
    create_table :dealers_kpis do |t|
      t.jsonb :score
      t.integer :goal
      t.integer :percentage
      t.integer :points
      t.date :period
      t.references :dealer, foreign_key: true
      t.references :calculator, foreign_key: true

      t.timestamps
    end
  end
end
