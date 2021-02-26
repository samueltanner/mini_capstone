class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def recent_product
    @product = Product.last
    render "one_product.json.jb"
  end

  def get_a_product_path #this works for both the url segemtn param and query param
    product_id = params[:product_id].to_i
    @product = Product.find_by(id: product_id)
    render "one_product.json.jb"
  end

  # def get_a_product_path_query
  #   id = params[:product_id].to_i
  #   @product = Product.find_by(id: id)
  #   render "recent_product.json.jb"
  # end
end
