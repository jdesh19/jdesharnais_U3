require_relative 'ar.rb'
=begin
puts "\n"

number_of_products = Product.count
#Total number of products
puts "There are #{number_of_products} in the products table."

puts "\n"

#The names of all products above $10 with names that begin with the letter C.
target_products = Product.where("name LIKE 'C%' AND price > 10")
target_products.each do |product| 
    puts product.name 
end
puts "\n"
#Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
low_quantity = Product.where("stock_quantity <= 5")
puts "There are #{low_quantity.count} products that are low in stock."

find_product_category = Product.find(155)
puts find_product_category.name

category_name = find_product_category.category.name
puts category_name
beverage = Category.where(:name => 'Beverages').first

new_product_with_assoc = beverage.products.build( name: 'Dr. Pepper',
description: "soft drink",
price: 3,
stock_quantity: 100,
)
new_product_with_assoc.save

puts new_product_with_assoc.inspect

target_category = Category.find(2)
puts target_category.inspect

products_with_category = target_category.products.where("price > 25")

products_with_category.each do |product|
    puts product.name
    puts product.price
end
=end
most_recent = Category.last
puts most_recent.name
