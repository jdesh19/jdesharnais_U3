require_relative 'ar.rb'
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