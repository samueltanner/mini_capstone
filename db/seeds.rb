# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# product = Product.create(name: "tennis ball", price: "3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!")

# product = Product.create(name: "spam", price: "3", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi")

product = Product.create(name: "poi stone", price: "500.82", img_url: "https://i.pinimg.com/originals/4b/59/18/4b591824a9ef03956704e2e392f63a5f.jpg", description: "perfect for making poi")
Product.create!([
  { name: "tennis ball", price: "3.0", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!", inventory: nil },
  { name: "spam", price: "3.0", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi", inventory: nil },
  { name: "computer", price: "3000.0", img_url: "https://www.zdnet.com/a/hub/i/r/2020/11/16/37e33024-2892-4bb7-9d21-6ac6f7544def/thumbnail/770x433/5f1b7f881bfb80a9f2bbe02bc6d64b49/apple-macbook-pro-m1-2020-5.jpg", description: "A supped up macbook", inventory: nil },
  { name: "dog toy", price: "3.0", img_url: "https://www.thesprucepets.com/thmb/JCJ3NUbhaQ02zD1VX8CULf_lkR4=/3797x2712/filters:no_upscale():max_bytes(150000):strip_icc()/boston-terrier-at-play-at-dog-park-498311849-584b31c93df78c491e70bd8b.jpg", description: "A big dog toy", inventory: nil },
  { name: "poi stone", price: "500.82", img_url: "https://i.pinimg.com/originals/4b/59/18/4b591824a9ef03956704e2e392f63a5f.jpg", description: "perfect for making poi", inventory: nil },
])
Product.create!([
  {name: "tennis ball", price: "3.0", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!", inventory: nil},
  {name: "spam", price: "3.0", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi", inventory: nil}
])
