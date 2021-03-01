require "http"
id = gets.chomp.to_i
response = HTTP.get("http://localhost:3000/api/single_product/#{id}").parse

pp response
