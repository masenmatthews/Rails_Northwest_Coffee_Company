class HomeController < ApplicationController
  def index
    @products = Product.all
    @reviews = Review.all
    @made_in_usa = Product.made_in_usa
    @three_most_recent = Product.three_most_recent
    @most_reviewed_products = Product.most_reviewed_products
    render :index
  end
end
