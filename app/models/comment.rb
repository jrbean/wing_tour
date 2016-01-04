class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :review

  validates :body, presence: true
  validates :body, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
end
