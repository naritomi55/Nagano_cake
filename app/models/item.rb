class Item < ApplicationRecord

  has_one_attached :image
  belongs_to :genre
  has_many :order_details
  has_many :cart_items

  def add_tax_price
    (self.price * 1.10).round
  end

  validates :name, presence: true
  validates :introduction, presence: true
  validates :genre_id, presence: true
  validates :price, presence: true
  validates :is_active, inclusion: [true, false]

end
