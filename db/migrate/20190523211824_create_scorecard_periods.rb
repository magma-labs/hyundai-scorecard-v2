class CreateScorecardPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :scorecard_periods do |t|
      t.date :period, unique: true
      t.boolean :status

      t.timestamps
    end
  end
end
