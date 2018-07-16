Product.destroy_all
Review.destroy_all

50.times do |i|
  Product.create!(title: Faker::Food.dish, description: Faker::Coffee.notes, country: Faker::Address.country, created_at: Faker::Date.between(365.days.ago, Date.today) )
  @product_id = Product.last.id
  5.times do |i|
    @review_description = Faker::Lorem.characters(200)
    review_title = Faker::Overwatch.quote
    @rating = Faker::Number.between(1, 5)
    Review.create!(review_description: @review_description, rating: @rating, review_title: review_title, :product_id => @product_id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
