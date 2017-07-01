class Product < ApplicationRecord
  has_many :images
  has_many :carted_products
end