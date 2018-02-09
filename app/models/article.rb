class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  include PgSearch
   pg_search_scope :search,
      against: { title: 'A', body: 'B' },
        using: {
          tsearch: {
            prefix: true,
            any_word: true,
            dictionary: 'english'
          }
        }

  # Validations
  validates_presence_of :title, :body, :department_id, :user_id
  belongs_to :department
  belongs_to :user

  def to_param
    [title.parameterize].join("-")
  end
end
