Product.destroy_all
Review.destroy_all

30.times do |i|
  Product.create!(title: Faker::DragonBall.character, description: Faker::Overwatch.quote)
  @product_id = Product.last.id
  10.times do |i|
    @description = Faker::RickAndMorty.quote
    title = Faker::Fallout.quote
    @rating = Faker::Number.between(1, 5)
    Review.create!(description: @description, rating: @rating, title: title, :product_id => @product_id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
