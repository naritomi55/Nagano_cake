# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create!(
#   email: "arutema.ke@gmail.com",
#   password: "arutema"
#   )

# Customer.create!(
#   last_name: "田中",
#   first_name: "ひろし",
#   last_name_kana: "タナカ",
#   first_name_kana: "ヒロシ",
#   email: "tanaka.i@gmail.com",
#   password: "tanaka11",
#   postal_code: "8300038",
#   address: "田中県田中市",
#   telephone_number: "05032261842",
#   is_active: "true"
#   )

# Order.create!(
#   customer_id: "1",
#   postal_code: "8300038",
#   address: "田中県田中市",
#   name: "田中ヒロシ",
#   shipping_cost: "500",
#   total_payment: "1500",
#   payment_method: "credit_card",
#   status: "a",
#   )

OrderDetail.create!([
  {
  item_id: "1",
  order_id: "1",
  amount: "2",
  price: "1200",
  making_status: "a"
  },
  {
  item_id: "2",
  order_id: "1",
  amount: "2",
  price: "1200",
  making_status: "a"
  }])


