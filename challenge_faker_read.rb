require_relative 'ar.rb'

#Find all the categories in the database (including those that you added using Faker). 
#Display all category names and their associated products (name and price) in a nicely formatted list.

all_categories = Category.all
puts "Categories with Products Associated: "
all_categories.each do |category|
    
    puts "\n#{category.name}"

    products_from_category = category.products.all
    
    products_from_category.each do |product|
        puts "      - #{product.name}"  
    end
end