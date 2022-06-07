class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :address
  has_many :order
  has_many :cart_item
  
  # 会員フルネーム
  def full_name
    self.last_name + "" + self.first_name
  end
end
