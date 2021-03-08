class Supplier < ApplicationRecord
  # validates :name, presence: true, uniqueness: true
  # validates :email, presence: true

  has_many :products #this accomplishes Product.where(supplier_id: id)

  # def products
  #   Product.where(supplier_id: id)
  # end
end
