Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/show_products" => "show_all_products#index"
    get "/show_products" => "show_products#index"
  
  end
end
