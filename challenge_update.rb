require_relative 'ar.rb'

more_tham_40_in_stock = Product.where("stock_quantity > 40")
more_tham_40_in_stock.each do |product|
    product.stock_quantity += 1
    product.save
end