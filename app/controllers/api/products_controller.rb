class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
  #   params = [:id]
  #   render "show.json.jb"
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image],
      description: params[:description]
    )
    render "index.json.jb"
  end
end
