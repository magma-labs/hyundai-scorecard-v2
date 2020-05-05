class AddPostsalesDmsToDealer < ActiveRecord::Migration[5.2]
  def change
    add_reference :dealers, :postsales_dm, foreign_key: true
  end
end
