require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do 
    department = Department.create!(title: "Sales")
    it "is not possible to create an article without a title" do 
      x = Article.count
      a = Article.new(title: "", body:"Some random body text", department_id: Department.first.id)
      a.save
      expect(Article.count).to eq(x)
    end

    it "is not possible to create an article without a body" do 
      x = Article.count
      a = Article.new(title: "Some randome title", body:"", department_id: Department.first.id)
      a.save
      expect(Article.count).to eq(x)
    end

    it "is not possible to create an article without a department" do 
      x = Article.count
      a = Article.new(title: "sqweqwe", body: "qweqweq", department_id: "")
      a.save
      expect(Article.count).to eq(x)
    end
  end
end
