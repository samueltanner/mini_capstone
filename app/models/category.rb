class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories

  # def products ##this is the same as   has_many :prodcuts, through: :product_categories
  #   product_categories.map do |product_category|
  #     product_category.product
  #   end
  # end
end
