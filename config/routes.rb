Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    ### PRODUCT ROUTES

    get "/products" => "products#index"

    get "/products/:id" => "products#show" #example as a url segment perameter http://localhost:3000/api/find_product_by_id/1

    post "/products" => "products#create"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"

    ### SUPPLIERS ROUTES

    get "/suppliers" => "suppliers#index"

    get "/suppliers/:id" => "suppliers#show"

    post "/suppliers" => "suppliers#create"

    patch "/suppliers/:id" => "suppliers#update"

    delete "/suppliers/:id" => "suppliers#destroy"

    ### USER ROUTES

    post "/users" => "users#create"

    ### SESSION ROUTES
    post "/sessions" => "sessions#create"

    ### ORDERS ROUTES
    post "/orders" => "orders#create"

    get "/orders" => "orders#index"

    get "/orders/:id" => "orders#show"

    ### IMAGES ROUTES

    post "/images" => "images#create"

    #get "/most_recent_product" => "products#recent_product"

    #get "/find_product_by_id" => "products#get_a_product_path" #url as a querey param http://localhost:3000/api/find_product_by_id?product_id=3

    ###CART
    post "/cart/:product_id" => "carted_products#destroy"
    post "/cart" => "carted_products#create"
    get "/cart" => "carted_products#index"
  end
end
