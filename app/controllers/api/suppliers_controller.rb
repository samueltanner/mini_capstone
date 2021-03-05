class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    if params[:search] #this allows the user to search from the index by product NAME, nothing else
      @suppliers = Supplier.where("name ILIKE ?", "%#{params[:search]}%")
    end

    @suppliers = @suppliers.order(id: :asc) #this orders the results by price in ascending order
    render "index.json.jb"
  end

  def show
    supplier_id = params[:id].to_i
    @supplier = Supplier.find_by(id: supplier_id)
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )

    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def update
    supplier_id = params[:id]
    @supplier = Supplier.find_by(id: supplier_id) #this needs to be () not []

    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def destroy
    supplier_id = params[:id]
    @supplier = Supplier.find_by(id: supplier_id) #this needs to be () not []

    @supplier.destroy
    render json: { message: "they were destroyed" }
  end
end
