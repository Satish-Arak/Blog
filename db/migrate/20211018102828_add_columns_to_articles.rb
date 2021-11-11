class AddColumnsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :description, :text
    add_column :articles, :price, :decimal
  end
end
