class Incident < ApplicationRecord
  # Named scopes


  # Enum
  enum status: [:relevant, :pending, :fixed]

  # Validations
  validates_presence_of :title, :description, :solution, :status, :user_id

  # Associations
  belongs_to :user
end
