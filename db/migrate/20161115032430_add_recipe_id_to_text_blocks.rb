class AddRecipeIdToTextBlocks < ActiveRecord::Migration
  def change
  	add_column :text_blocks, :recipe_id, :integer
  	add_index :text_blocks, :recipe_id
  end
end
