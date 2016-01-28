class Review < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :wings, dependent: :destroy
  accepts_nested_attributes_for :wings, reject_if: :all_blank, allow_destroy: true
end
