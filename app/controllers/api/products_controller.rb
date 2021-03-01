class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show #this works for both the url segemtn param and query param
    product_id = params[:id].to_i
    @product = Product.find_by(id: product_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      img_url: params[:img_url],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id) #this needs to be () not []

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.img_url = params[:img_url] || @product.img_url

    @product.save
    render "show.json.jb"
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id) #this needs to be () not []

    @product.destroy
    render json: { message: "It was destroyed" }
  end

  # def recent_product
  #   @product = Product.last
  #   render "one_product.json.jb"
  # end

  # def get_a_product_path_query
  #   id = params[:product_id].to_i
  #   @product = Product.find_by(id: id)
  #   render "recent_product.json.jb"
  # end
end
