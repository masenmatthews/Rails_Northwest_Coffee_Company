class Review < ActiveRecord::Base
  belongs_to :product
  validates :review_title, :review_description, :rating, :presence => true
  validates :review_description, length: { minimum: 50 }
  validates :review_description, length: { maximum: 250 }
  validates :rating, numericality: { greater_than_or_equal_to: 1 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
