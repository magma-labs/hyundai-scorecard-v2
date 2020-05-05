class CreateJoinTableUsersDealers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :dealers do |t|
      t.index [:user_id, :dealer_id], unique: true
      # t.index [:dealer_id, :user_id]
    end
  end
end
