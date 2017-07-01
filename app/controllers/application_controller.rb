class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      # this says if you can find the session, then return the user if it exists. you don't really need the or, but it makes it more efficient by not having to access the db each time you call this method
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  helper_method :current_user

  def cart_amount
    total = 0
    CartedProduct.where(user_id: current_user.id, status: "carted").each do |carted_product|
      total += carted_product.quantity
    end
    total
  end
  helper_method :cart_amount

  def order_subtotal
    subtotal = 0
    CartedProduct.where(user_id: current_user.id, status: "carted").each do |carted_product|
      subtotal += carted_product.total_cost
    end
    subtotal
  end
  helper_method :order_subtotal 

  def order_tax
    order_subtotal * 0.08875
  end
  helper_method :order_tax

  def order_total
    order_subtotal + order_tax
  end
  helper_method :order_total
end
