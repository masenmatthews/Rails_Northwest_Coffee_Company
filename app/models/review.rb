class Review < ActiveRecord::Base
  belongs_to :product
  validates :title, :description, :rating, :presence => true
end
