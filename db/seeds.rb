require 'faker'
require 'open-uri'
require 'securerandom'

puts "Deleting all products and users..."
Product.destroy_all
User.destroy_all

puts "Creating user..."
User.create(email: "dave@gmail.com", password: "secret")

puts "Generating products with unique images..."
10.times do
  p = Product.create(
    name: Faker::Commerce.unique.product_name,
    price: Faker::Number.decimal(l_digits: 2)
  )

  # Pobieranie unikalnego obrazu z loremflickr.com z unikalnym parametrem
  image_url = "https://loremflickr.com/400/400/product?random=#{SecureRandom.uuid}"
  file = URI.open(image_url)

  # Przypisanie obrazu do produktu
  p.main_image.attach(io: file, filename: "product_#{p.id}.jpg", content_type: "image/jpg")

  puts "Generated product: #{p.name} with a unique image"
end

puts "Seeding complete!"