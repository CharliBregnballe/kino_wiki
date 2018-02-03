require 'rails_helper'

RSpec.describe "articles/show.html.erb", type: :view do
  it "can be destroyed" do 
    @article = Article.create!(title: "Article for deletion", body: "This article will be deleted", department_id: Department.first.id, user_id: User.first.id)
    count = Article.count
    visit "articles/#{@article.id}"
    click_link "Delete Article"
    expect(Article.count).to eq(count - 1)
  end
end
