class RemoveTitleColumnFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :title
  end
end
