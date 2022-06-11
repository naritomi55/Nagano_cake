class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order

  enum making_status: { a: 0, b: 1, c: 2, d: 3 }

  def add_tax_price
   (self.price * 1.10).round
  end

end
