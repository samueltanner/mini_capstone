class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def recent_product
    @product = Product.last
    render "recent_product.json.jb"
  end
end
