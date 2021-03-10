class Api::OrdersController < ApplicationController
  before_action :authenticate_user #prohibits a non-logged in user from viewing orders

  def index
    #if current_user
    @orders = current_user.orders
    render "index.json.jb"
    #else
    #render json: { message: "you aren't logged in" }, status: 401
    #end
  end

  def show
    #if current_user
    order_id = params[:id]
    @order = current_user.orders.find_by(id: 42)
    render "show.json.jb"
    #else
    #render json: { message: "you aren't logged in" }, status: 401
    #end
  end

  def create
    #if current_user
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    @order.save
    render "show.json.jb"
    #else
    #render json: { message: "you must be logged in to order" }, status: 401
    #end
  end
end
