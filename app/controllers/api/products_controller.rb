class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show] #only admin can create, update, or destory products. logged in users can index and show

  def index
    # if current_user
    #   @products = Product.all
    # else
    #   render json: []
    # end
    @products = Product.all

    if params[:category] #this allows the user to search from the index by product NAME, nothing else
      category = Category.find_by(name: params[:category])     # or ("name ILIKE ?", "%#{params[:category]}%") #THIS WILL HANDLE CATEGORIES WITH SPACES
      @products = category.products
    end

    # if params[:search] #this allows the user to search from the index by product NAME, nothing else
    #   @products = Product.where("categories.name ILIKE ?", "%#{params[:search]}%")
    # end

    #@products = @products.order(price: :asc) #this orders the results by price in ascending order
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
      #img_url: params[:img_url],
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
    #@product.img_url = params[:img_url] || @product.img_url

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
end
