require_relative 'ar.rb'
10.times do
    new_category = Category.new(
        name: Faker::Commerce.unique.department,
        description: Faker::Lorem.paragraph,
    )
    new_category.save
    product_from_category = new_category.products.new( name: Faker::Commerce.unique.product_name,
                                                      description: Faker::Lorem.paragraph,
                                                      price: Faker::Commerce.price,
                                                      stock_quantity: Faker::Number.between(from: 1, to: 200)

                                                    )


    
end