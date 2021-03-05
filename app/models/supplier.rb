class Supplier < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true

  def products
    Product.where(supplier_id: id)
  end
end
