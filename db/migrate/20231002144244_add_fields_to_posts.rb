class AddFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :summary, :text
    add_column :posts, :author, :string
    add_column :posts, :tags, :string
  end
end
