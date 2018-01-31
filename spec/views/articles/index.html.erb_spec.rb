require 'rails_helper'

RSpec.describe "articles/index.html.erb", type: :view do
  department = Department.create!(title: "Sales")
  it 'is possible to see articles on index page' do 
    3.times do 
      Article.create!(title: "Title of Article", body: "Body of article",)
      visit ('/')
      expect(page).to have_content("Title of Article")
    end
  end
end
