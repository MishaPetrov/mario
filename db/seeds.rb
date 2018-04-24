Product.destroy_all
Review.destroy_all

40.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                      cost: Faker::Commerce.price,
                      country: Faker::Address.country)
end

10.times do |i|
  Product.create(name: Faker::Food.dish,
                cost: Faker::Commerce.price,
                country: "USA")
end

250.times do |index|
  products = Product.all
  product = products[rand(0..49)]
  product.reviews.create(author: Faker::Name.name,
                        content_body: Faker::Lorem.sentences(3).join(" "),
                        rating: rand(1..5)
                        )
end

p "created #{Product.count} products"
p "created #{Review.count} Reviews"
