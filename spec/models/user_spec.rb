require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do 
    it "is possible to create a user" do 
      x = User.count
      user = User.create!(email: "user#{User.last.id}@example.com", first_name: "Test", last_name: "User", password: "Test12345", password_confirmation: "Test12345", department_id: Department.first.id) 
      expect(User.count).to eq(x+1)
    end
  end  
    
end
