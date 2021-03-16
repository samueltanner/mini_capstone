class Product < ApplicationRecord

  ##VALIDATIONS:
  # validates :name, presence: true, uniqueness: true
  # validates :inventory, presence: true, numericality: { greater_than: 0 }
  # validates :description, length: { in: 20..500 }
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :img_url, presence: true, format: { with: /\.(png|jpg)\Z/i }

  belongs_to :supplier #this accomplishes Supplier.find_by(id: supplier_id)
  
  has_many :images
  
  has_many :product_categories
  has_many :categories, through: :product_categories
  
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :users, through: :carted_products

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def categories ##this is the same as has_many :categories, through: :product_categories
  #   product_categories.map do |product_category|
  #     product_category.category
  #   end
  # end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
end
