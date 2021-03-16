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
    #product_id =
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    if carted_products.length > 0
      @subtotal = 0
      carted_products.map do |c_product|
        product = Product.find(c_product.product_id)
        @subtotal += product.price * c_product.quantity
      end
      calculated_tax = @subtotal * 0.09
      calculated_total = @subtotal + calculated_tax

      @order = Order.new(
        user_id: current_user.id,
        subtotal: @subtotal,
        tax: calculated_tax,
        total: calculated_total,
      )

      if @order.save
        carted_products.map do |c_product|
          c_product.status = "purchased"
          c_product.save
        end
        render "show.json.jb"
      else
        render json: { errors: @order.errors_full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "Your Cart is Empty" }
    end
  end
end
