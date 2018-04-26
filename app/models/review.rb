class Review < ActiveRecord::Base
  belongs_to :product
  validates :review_title, :review_description, :rating, :presence => true

def rating_validation
    if self.rating <= 5 && self.rating >= 1
      return self.rating
    else
      return "Invalid rating - please enter a rating that falls between 1 and 5"
  end
end

def review_validation
    if self.review_description.size >= 50 && self.review_description.size <= 250
      return self.review_description
    else
      return "Invalid review description - please enter a description that falls between 50 and 250 characters in length"
    end
  end
end
