# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProductVariant.destroy_all
Color.destroy_all
Size.destroy_all
Product.destroy_all

sizes = ['S', 'M', 'L']

colors = ['White', 'Black', 'Green']


item1 = Product.create(
  name: "Simple Green T-Shirt",
  description: "This is the simple green T-Shirt for women",
  price: 14.99,
  image: "/images/female-green-shirt.jpg"
)

item2 = Product.create(
  name: "Simple Black T-Shirt",
  description: "This is the simple black T-Shirt women",
  price: 14.99,
  image: "/images/female-black-t.jpeg"
)

item3 = Product.create(
  name: "Simple White T-Shirt",
  description: "This is the simple white T-Shirt for women",
  price: 14.99,
  image: "/images/female-white-t.jpg"
)

item4 = Product.create(
  name: "Simple Black T-Shirt",
  description: "This is the simple black T-Shirt men",
  price: 14.99,
  image: "/images/male-black-t.jpg"
)

item5 = Product.create(
  name: "Simple Green T-Shirt",
  description: "This is the simple green T-Shirt for men",
  price: 15.99,
  image: "/images/male-green-t.jpg"
)

item6 = Product.create(
  name: "Simple White T-Shirt",
  description: "This is the simple white T-Shirt for men",
  price: 14.99,
  image: "/images/male-white-t.jpg"
)

sizes.each do |size_name|
  size = Size.create(name: size_name)
end

colors.each do |color_name|
  color = Color.create(name: color_name)
end

Product.all.each do |product|
  Size.all.each do |size|
    Color.all.each do |color|
      ProductVariant.create(product: product, color: color, size: size)
    end
    end
  end

puts "#{ProductVariant.count} items"
