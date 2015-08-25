class AddReviewItemsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :address, :string
    add_column :articles, :food_rating, :integer
    add_column :articles, :service_rating, :integer
    add_column :articles, :ambience_rating, :integer
  end
end
