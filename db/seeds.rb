Product.destroy_all
Review.destroy_all

30.times do |i|
  Product.create!(title: Faker::Food.dish, description: Faker::Overwatch.quote)
  @product_id = Product.last.id
  10.times do |i|
    @description = Faker::Lorem.sentence(5)
    title = Faker::Lorem.words(7)
    @rating = Faker::Number.between(1, 5)
    Review.create!(description: @description, rating: @rating, title: title, :product_id => @product_id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
