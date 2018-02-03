class Article < ApplicationRecord
  validates_presence_of :title, :body, :department_id
  belongs_to :department
  belongs_to :user
end
