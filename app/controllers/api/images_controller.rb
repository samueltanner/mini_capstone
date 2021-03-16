class Api::ImagesController < ApplicationController
  def create
    @image = Image.new(
      product_id: params[:product_id],
      url: params[:url],
    )
    @image.save
    render json: { message: "The image was saved" }
  end
end
