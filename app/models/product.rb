class Product < ActiveRecord::Base
  has_many :reviews
  validates :title, :description :presence => true
end
