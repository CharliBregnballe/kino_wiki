require 'rails_helper'

RSpec.describe "articles/new.html.erb", type: :view do
  it "is possible to create an article" do 
    visit 'articles/new'
    fill_in 'article[title]', with: 'Content for title'
    fill_in 'article[body]', with: 'Content for body'
    click_button 'Create Article'
    expect(page).to have_current_path(article_path(Article.last))
    expect(page).to have_content("Content for title")

  end
end
