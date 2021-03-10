class Product < ApplicationRecord

  ##VALIDATIONS:
  # validates :name, presence: true, uniqueness: true
  # validates :inventory, presence: true, numericality: { greater_than: 0 }
  # validates :description, length: { in: 20..500 }
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :img_url, presence: true, format: { with: /\.(png|jpg)\Z/i }

  belongs_to :supplier #this accomplishes Supplier.find_by(id: supplier_id)
  has_many :images
  has_many :orders

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
end
