class Api::ProductsController < ApplicationController
  def show_all_products
    render 'show_all_products.json.jb'
  end

  def show_product
    render 'show_product.json.jb'
  end
end
