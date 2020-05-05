class CreatePostsalesDms < ActiveRecord::Migration[5.2]
  def change
    create_table :postsales_dms do |t|
      t.string :name
      t.timestamps
    end
  end
end
