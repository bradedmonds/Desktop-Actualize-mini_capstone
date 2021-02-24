Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/show_products" => "products#show_all_products"
    get "/show_one_product" => "products#show_product"
  
  end
end
