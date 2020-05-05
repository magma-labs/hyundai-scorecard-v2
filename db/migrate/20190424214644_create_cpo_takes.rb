class CreateCpoTakes < ActiveRecord::Migration[5.2]
  def change
    create_table :cpo_takes do |t|
      t.belongs_to :cpo, index: { unique: true }, foreign_key: true
      t.integer :hyundai
      t.integer :others

      t.timestamps
    end
  end
end
