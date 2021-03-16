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
    @carted_products = current_user.carted_products.where(status: "carted")
    if carted_products.length > 0
      @calculated_subtotal = 0
      carted_products.map do |carted_product|
        #product = Product.find(carted_product.product_id)
        @calculated_subtotal += carted_product.product.price * carted_product.quantity
      end
      calculated_tax = @calculated_subtotal * 0.09
      calculated_total = @calculated_subtotal + calculated_tax

      @order = Order.new(
        user_id: current_user.id,
        subtotal: @calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total,
      )

      if @order.save
        carted_products.update_all(status: "purchased", order_id: @order.id)
          # carted_product.status = "purchased"
          # carted_product.save
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
