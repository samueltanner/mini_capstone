class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    #status = "carted"
    @cart = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted", #this is a default value
    )
    if @cart.save
      render "show.json.jb"
    else
      render json: { errors: @cart.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @cart = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:product_id])
    #carted_product = CartedProduct.where(user_id: current_user.id, status: "carted", product_id: params[:product_id]).first
    carted_product.status = "removed"
    carted_product.save
    render json: { message: "your product was removed" }
  end
end
