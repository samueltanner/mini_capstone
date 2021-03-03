class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :inventory, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 20..500 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :img_url, presence: true, format: { with: /\.(png|jpg)\Z/i }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
