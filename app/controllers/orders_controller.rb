class OrdersController < ApplicationController
  def new
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted").order(:id)
  end

  def create
    order = Order.create(
      user_id: current_user.id
    )
    order.update(
      subtotal: order_subtotal,
      tax: 0.09,
      total: order_total,
      confirmation_id: (('a'..'z').to_a.sample(5) + (0..9).to_a.sample(5)).shuffle.join("")
    )
    CartedProduct.where(user_id: current_user.id, status: "carted").each do |carted_product|
      carted_product.update(status: "ordered")
    end
    flash[:success] = "Success! Order has been placed. Confirmation Number: #{order.confirmation_id}"
    redirect_to '/'
  end
end
