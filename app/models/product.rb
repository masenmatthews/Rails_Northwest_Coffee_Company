class Product < ActiveRecord::Base
  has_many :reviews
  validates :title, :description, :presence => true

  scope :most_reviewed_products, -> {
  select("products.id, products.title, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(3)
  }
end
