class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :category_id, :string
    add_column :posts, :—force, :string
  end
end
