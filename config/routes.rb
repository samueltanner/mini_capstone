Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"

    get "/products/:id" => "products#show" #example as a url segment perameter http://localhost:3000/api/find_product_by_id/1

    post "/products" => "products#create"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"

    #get "/most_recent_product" => "products#recent_product"

    #get "/find_product_by_id" => "products#get_a_product_path" #url as a querey param http://localhost:3000/api/find_product_by_id?product_id=3
  end
end
