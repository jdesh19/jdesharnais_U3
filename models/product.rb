class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, :price, :stock_quantity, presence: true
  belongs_to :category
end

=begin
Product Table Columns:

id
name
description
price
stock_quantity
category_id Relation to category table.
created_at
updated_at
=end