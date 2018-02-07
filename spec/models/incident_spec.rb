require 'rails_helper'

RSpec.describe Incident, type: :model do
  describe Incident do 
    it "is not possible to create an incident without a title" do 
      x = Incident.count 
      incident = Incident.new(title: " ", description: "This is a test description", solution: "There is no solution", status: :pending, user_id: User.last.id)
      incident.save
      expect(Incident.count).to eq(x)
    end
  end
end

