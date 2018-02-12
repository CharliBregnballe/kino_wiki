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
            dictionary: 'danish'
          }
        }

  # Scopes
  scope :popular_articles, -> { order(impressions_count: :desc).limit(10) }

  # Validations
  validates_presence_of :title, :body, :department_id, :user_id
  belongs_to :department
  belongs_to :user

  # add impressionist
  is_impressionable :counter_cache => true

  def to_param
    [title.parameterize].join("-")
  end
end
