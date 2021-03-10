class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        total: 100,
      )
      @order.save
      render "show.json.jb"
    else
      render json: { message: "you must be logged in to order" }
    end
  end

  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render "index.json.jb"
    else
      render json: { message: "you aren't logged in" }
    end
  end
end
