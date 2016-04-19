class AddPhotosToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :photo_file_name, :string
    add_column :recipes, :photo_content_type, :string
    add_column :recipes, :photo_file_size, :integer
    add_column :recipes, :photo_updated_at, :datetime
  end
end
