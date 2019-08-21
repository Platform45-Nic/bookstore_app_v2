class Review < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :book, class_name: 'Book'

  validates :review_description, presence: true
end
