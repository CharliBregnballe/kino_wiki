require 'rails_helper'

RSpec.describe "articles/new.html.erb", type: :view do
  it "is possible to create an article" do 
    user = User.create!(email: 'testuser@example.com', first_name: 'test', last_name: 'user', department: Department.first, password: 'Password12345', password_confirmation: 'Password12345')
    visit 'users/sign_in'
    fill_in 'user[email]', with: 'testuser@example.com'
    fill_in 'user[password]', with: 'Password12345'
    click_button 'Log in'
    visit '/articles/new'
    fill_in 'article[title]', with: 'Content for title'
    fill_in 'article[body]', with: 'Content for body'
    find('#department_dropdown').find(:xpath, 'option[2]').select_option
    click_button 'Submit'
    expect(page).to have_current_path(article_path(Article.last))
    expect(page).to have_content("Content for title")
  end
end

