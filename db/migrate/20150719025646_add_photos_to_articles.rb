class AddPhotosToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :photo_file_name, :string
    add_column :articles, :photo_content_type, :string
    add_column :articles, :photo_file_size, :integer
    add_column :articles, :photo_updated_at, :datetime
  end
end
