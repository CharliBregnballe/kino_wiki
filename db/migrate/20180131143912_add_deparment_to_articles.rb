class AddDeparmentToArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :department, foreign_key: true
  end
end
