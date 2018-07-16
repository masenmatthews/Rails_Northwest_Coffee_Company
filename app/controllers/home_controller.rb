class HomeController < ApplicationController
  def index
    @products = Product.all
    @reviews = Review.all
    @three_most_recently_added = Product.three_most_recently_added
    @most_reviewed_products = Product.most_reviewed_products
    render :index
  end
end
