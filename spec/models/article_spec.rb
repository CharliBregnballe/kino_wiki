require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do 
    it "is not possible to create an article without a title" do 
      x = Article.count
      a = Article.new(title: "", body:"Some random body text")
      a.save
      expect(Article.count).to eq(x)
    end

    it "is not possible to create an article without a body" do 
      x = Article.count
      a = Article.new(title: "Some randome title", body:"")
      a.save
      expect(Article.count).to eq(x)
    end
  end
end
