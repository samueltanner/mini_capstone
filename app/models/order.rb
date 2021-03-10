class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  #def
  # def total
  #   quantity * @orders.product.price
  # end
end
