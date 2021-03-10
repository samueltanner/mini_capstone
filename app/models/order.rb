class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  ##THIS WON'T STORE IN THE DB BECAUSE IT IS IN A MODEL
  def sub_total
    @sub_total = quantity * product.price
  end

  def tax
    @tax = @sub_total * 0.09
  end

  def total
    @total = @tax + @sub_total
  end
end
