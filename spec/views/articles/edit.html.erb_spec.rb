require 'rails_helper'

RSpec.describe "articles/edit.html.erb", type: :view do
  it "is possible to update/edit an article" do 
    a = Article.create!(title: "Some random title", body: "Some random body")
    visit "articles/#{a.id}/edit"
    fill_in 'article[title]', with: 'Title updated'
    fill_in 'article[body]', with: 'Body Updates'
    click_button 'Update Article'
    expect(page).to have_current_path(article_path(a))
    expect(page).to have_content("Title updated")
  end
end

