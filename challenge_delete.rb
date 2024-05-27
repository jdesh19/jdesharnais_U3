require_relative 'ar.rb'

most_recent_prodct = Product.last 

puts most_recent_prodct.name 

most_recent_prodct.destroy 

most_recent_prodct = Product.last # find new most recent product
puts most_recent_prodct.name #display new most recent product