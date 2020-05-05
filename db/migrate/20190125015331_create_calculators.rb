class CreateCalculators < ActiveRecord::Migration[5.1]
  def change
    create_table :calculators do |t|
      t.string :frontend_class
      t.integer :points
      t.date :starts_on
      t.date :ends_on
      t.string :score_type
      t.references :kpi, foreign_key: true

      t.timestamps
    end
  end
end
