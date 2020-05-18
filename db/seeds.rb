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

sizes = ['s', 'm', 'l']

colors = ['white', 'black', 'red']


item1 = Product.create(
  name: "TSHIRT 1",
  description: "This is the first T SHIRT",
  price: 25.99,
)

item2 = Product.create(
  name: "TSHIRT 2",
  description: "This is the first T SHIRT",
  price: 25.99,
)

item3 = Product.create(
  name: "TSHIRT 3",
  description: "This is the first T SHIRT",
  price: 25.99,
)

item4 = Product.create(
  name: "TSHIRT 4",
  description: "This is the first T SHIRT",
  price: 25.99,
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
