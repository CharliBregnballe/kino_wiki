class Incident < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  
  # Enum
  enum status: [:relevant, :pending, :fixed]

  # Validations
  validates_presence_of :title, :description, :solution, :status, :user_id

  # Associations
  belongs_to :user
end
