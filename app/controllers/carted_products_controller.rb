class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted").order(:id)
  end

  def create
    quantity = params[:quantity].to_i
    CartedProduct.create(
      status: "carted",
      user_id: current_user.id,
      product_id: params[:product_id].to_i,
      quantity: quantity
    )
    if quantity > 1
      item = "Items"
    else
      item = "Item"
    end
    flash[:success] = "#{item} added to cart"
    redirect_to '/'
  end

  def update
    i = 0
    total = params[:carted_product_ids].length
    total.times do
      latest_quantity = params[:quantities][i].to_i
      carted_product = CartedProduct.find(params[:carted_product_ids][i].to_i)
      if latest_quantity.zero?
        carted_product.update(status: "removed")
      elsif latest_quantity != carted_product.quantity
        carted_product.update(quantity: latest_quantity)
      end
      i += 1
    end
    redirect_to '/cart'
  end
end
