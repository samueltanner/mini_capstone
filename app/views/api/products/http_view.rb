require "http"
require "tty-table"

@response = HTTP.get("http://localhost:3000/api/all_products_path")

p @parsed_response = @response.parse
