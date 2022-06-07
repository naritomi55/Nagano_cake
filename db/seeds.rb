# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "arutema.ke@gmail.com",
  password: "arutema"
  )

Customer.create!(
  last_name: "田中",
  first_name: "ひろし",
  last_name_kana: "タナカ",
  first_name_kana: "ヒロシ",
  email: "tanaka.i@gmail.com",
  password: "tanaka11",
  postal_code: "8300038",
  address: "田中県田中市",
  telephone_number: "05032261842",
  is_active: "true"
  )