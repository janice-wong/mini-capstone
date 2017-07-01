class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def total_cost
    quantity * product.price
  end
end
