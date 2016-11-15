class AddArticleIdToTextBlocks < ActiveRecord::Migration
  def change
  	add_column :text_blocks, :article_id, :integer
  	add_index :text_blocks, :article_id
  end
end
