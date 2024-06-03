require_relative 'ar.rb'
#1
new_product = Product.new

new_product.name = "Microphone"
new_product.description = "Speak into it"
new_product.price = 30
new_product.stock_quantity = 50

new_product.save
puts new_product.inspect
puts "\n"
#2
headphones = Product.new(
                            name: "Headphones",
                            description: "Use to listen to things on your computer",
                            price: 300,
                            stock_quantity: 20
                        )

headphones.save
puts headphones.inspect

#3
monitor = Product.create(
                            name: "Monitor",
                            description: "Use to see things on your computer",
                            price: 400,
                            stock_quantity: 10
                        )

puts monitor.inspect

invalid = Product.create(
                            name: "Monitor",
                            price: 400,
                        )

invalid.errors.full_messages.each do |message|
    puts message
end
