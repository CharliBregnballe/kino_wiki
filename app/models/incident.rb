class Incident < ApplicationRecord
  enum status: [:relevant, :pending, :fixed]
end
