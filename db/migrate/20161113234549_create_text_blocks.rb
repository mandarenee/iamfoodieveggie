class CreateTextBlocks < ActiveRecord::Migration
  def change
    create_table :text_blocks do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
