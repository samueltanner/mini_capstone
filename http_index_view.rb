require "http"

response = HTTP.get("http://localhost:3000/api/products").parse

# i = 1
# response.each do |product|
#   {
#     product_hash[jindex] = product
#     index += 1
#   }

# prompt.select["a" product_hash]
pp response
