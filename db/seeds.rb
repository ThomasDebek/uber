

require 'faker'

puts "Delete product all and generate new and User"
Product.destroy_all
User.destroy_all
User.create(email: "dave@gmail.com", password: "secret")
10.times do
  p = Product.create(
    name: Faker::Commerce.unique.product_name,
    price: Faker::Number.decimal(l_digits: 2),
    )
  puts "generating - product - #{p.name}"
end
