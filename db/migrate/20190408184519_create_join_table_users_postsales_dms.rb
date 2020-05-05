class CreateJoinTableUsersPostsalesDms < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :postsales_dms do |t|
      t.index [:user_id, :postsales_dm_id], unique: true
      # t.index [:postsales_dm_id, :user_id]
    end
  end
end
