# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # product = Product.create(name: "tennis ball", price: "3", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!")

# # product = Product.create(name: "spam", price: "3", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi")

# # product = Product.create(name: "poi stone", price: "500.82", img_url: "https://i.pinimg.com/originals/4b/59/18/4b591824a9ef03956704e2e392f63a5f.jpg", description: "perfect for making poi")
# # Product.create!([
# #   { name: "tennis ball", price: "3.0", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!", inventory: nil },
# #   { name: "spam", price: "3.0", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi", inventory: nil },
# #   { name: "computer", price: "3000.0", img_url: "https://www.zdnet.com/a/hub/i/r/2020/11/16/37e33024-2892-4bb7-9d21-6ac6f7544def/thumbnail/770x433/5f1b7f881bfb80a9f2bbe02bc6d64b49/apple-macbook-pro-m1-2020-5.jpg", description: "A supped up macbook", inventory: nil },
# #   { name: "dog toy", price: "3.0", img_url: "https://www.thesprucepets.com/thmb/JCJ3NUbhaQ02zD1VX8CULf_lkR4=/3797x2712/filters:no_upscale():max_bytes(150000):strip_icc()/boston-terrier-at-play-at-dog-park-498311849-584b31c93df78c491e70bd8b.jpg", description: "A big dog toy", inventory: nil },
# #   { name: "poi stone", price: "500.82", img_url: "https://i.pinimg.com/originals/4b/59/18/4b591824a9ef03956704e2e392f63a5f.jpg", description: "perfect for making poi", inventory: nil },
# # ])
# # Product.create!([
# #   {name: "tennis ball", price: "3.0", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!", inventory: nil},
# #   {name: "spam", price: "3.0", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi", inventory: nil}
# # ])

# # supplier = Supplier.create(name: "Tess Co.", email: "tess@example.com", phone_number: "123-456-7890")

# # supplier = Supplier.create(name: "Sam Inc.", email: "sam@example.com", phone_number: "999-999-9999")

# # supplier = Supplier.create(name: "Mark LLC", email: "mark@example.com", phone_number: "000-000-0000")
# Supplier.create!([
#   { name: "Tess Co.", email: "tess@example.com", phone_number: "123-456-7890" },
#   { name: "Sam Inc.", email: "sam@example.com", phone_number: "999-999-9999" },
#   { name: "Mark LLC", email: "mark@example.com", phone_number: "000-000-0000" },
#   { name: "ACME products LLC", email: "acme@example.com", phone_number: "765-987-4321" },
#   { name: "Colleen Co.", email: "cls@gmail.com", phone_number: "360-918-006" },
# ])
# Product.create!([
#   { name: "spam", price: "3.0", img_url: "https://www.spam.com/wp-content/uploads/2019/09/image-product_spam-classic-12oz-420x420.png", description: "You know you want some musubi", inventory: nil, supplier_id: 2 },
#   { name: "poi stone", price: "500.82", img_url: "https://i.pinimg.com/originals/4b/59/18/4b591824a9ef03956704e2e392f63a5f.jpg", description: "perfect for making poi", inventory: nil, supplier_id: 2 },
#   { name: "sink sludge", price: "20.0", img_url: nil, description: "something awful", inventory: nil, supplier_id: 2 },
#   { name: "pond scum", price: "20.0", img_url: nil, description: "something awful", inventory: nil, supplier_id: 2 },
#   { name: "notebook", price: "5.0", img_url: "https://cdn.thewirecutter.com/wp-content/uploads/2020/01/sleepweek-lowres-1145985262-630x420.jpg", description: "a notebook for all your writing purposes including doodling", inventory: 18, supplier_id: 2 },
#   { name: "computer", price: "3000.0", img_url: "https://www.zdnet.com/a/hub/i/r/2020/11/16/37e33024-2892-4bb7-9d21-6ac6f7544def/thumbnail/770x433/5f1b7f881bfb80a9f2bbe02bc6d64b49/apple-macbook-pro-m1-2020-5.jpg", description: "A supped up macbook", inventory: nil, supplier_id: 1 },
#   { name: "bouncy ball", price: "3.05", img_url: nil, description: "this is a thing that bounces really high when you throw it at the ground", inventory: 88, supplier_id: 1 },
#   { name: "bouncy balls", price: "3.05", img_url: nil, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam interdum enim dolor", inventory: 88, supplier_id: 1 },
#   { name: "bouncy balls bag", price: "15.89", img_url: nil, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam interdum enim dolor", inventory: 88, supplier_id: 1 },
#   { name: "bouncy balls bags", price: "15.89", img_url: "https://images-na.ssl-images-amazon.com/images/I/81MpLB7DTPL.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam interdum enim dolor", inventory: 50, supplier_id: 1 },
#   { name: "tennis ball", price: "3.0", img_url: "https://images-na.ssl-images-amazon.com/images/I/61oT0J2ipHL._AC_UL1000_.jpg", description: "a perfect tennis ball for tennis or your dog!", inventory: nil, supplier_id: 3 },
#   { name: "dog toy", price: "3.0", img_url: "https://www.thesprucepets.com/thmb/JCJ3NUbhaQ02zD1VX8CULf_lkR4=/3797x2712/filters:no_upscale():max_bytes(150000):strip_icc()/boston-terrier-at-play-at-dog-park-498311849-584b31c93df78c491e70bd8b.jpg", description: "A big dog toy", inventory: nil, supplier_id: 3 },
#   { name: "toilet bowl water", price: "20.0", img_url: nil, description: "something awful", inventory: 3, supplier_id: 3 },
#   { name: "toilet bowl water jug", price: "20.0", img_url: nil, description: "something awful", inventory: 3, supplier_id: 3 },
#   { name: "doggy bag", price: "20.0", img_url: nil, description: "poo picker upper with a whole lot of bags in a roll", inventory: 100, supplier_id: 3 },
#   { name: "a literal dog", price: "1000.0", img_url: "https://www.yourpurebredpuppy.com/dogbreeds/photos-EFGH/goldenretrieversf1.jpg", description: "a big golden boy that definitely won't show up dead oh my oh my", inventory: 2, supplier_id: 3 },
# ])

Image.create!(url: "https://www.sciencemag.org/sites/default/files/styles/inline__450w__no_aspect/public/dogs_1280p_0.jpg?itok=4t_1_fSJ", product_id: 16)
Image.create(url: "https://images.theconversation.com/files/319375/original/file-20200309-118956-1cqvm6j.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop", product_id: 16)
