class ProductsController < ApplicationController
  def index
    if params[:sort] == "asc"
      @products = Product.all.order(:price)
    elsif params[:sort] == "desc"
      @products = Product.all.order(:price).reverse
    else
      @products = Product.all
    end
  end

  def new
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price]
    )
    Image.create(
      product_id: product.id,
      url: params[:image_url]
    )
    redirect_to '/'
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      price: params[:price]
    )
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to '/'
  end
end
