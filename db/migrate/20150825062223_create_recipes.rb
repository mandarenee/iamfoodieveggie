class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :body
      t.integer :serves
      t.boolean :published
      t.timestamps null: false
    end
  end
end
