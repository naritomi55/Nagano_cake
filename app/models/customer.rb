class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses
  has_many :orders
  has_many :cart_items

  # 会員フルネーム
  def full_name
    self.last_name + "" + self.first_name
  end

  def active_for_authentication?
    super && (is_active == true)
  end

end
