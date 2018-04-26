class Review < ActiveRecord::Base
  belongs_to :product
  validates :review_title, :review_description, :rating, :presence => true
end
