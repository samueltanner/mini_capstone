class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search] #this allows the user to search from the index by product NAME, nothing else
      @products = Product.where("name ILIKE ?", "%#{params[:search]}%")
    end

    @products = @products.order(price: :asc) #this orders the results by price in ascending order
    render "index.json.jb"
  end

  def show #this works for both the url segemtn param and query param
    product_id = params[:id].to_i
    @product = Product.find_by(id: product_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      supplier_id: params[:supplier_id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      img_url: params[:img_url],
      inventory: params[:inventory],
    )

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id) #this needs to be () not []

    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.img_url = params[:img_url] || @product.img_url

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
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
