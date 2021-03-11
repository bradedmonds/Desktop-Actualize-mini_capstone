class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create
   
    product = Product.find_by(id: params[:product_id]
    quantity = params[:quantity].to_i
    calculated_subtotal = product.price * quantity
    calculated_tax = quantity * product.tax
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      product: params[:product_id],
      quantity: params[:quantity],
      user: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    @order.save
    render "show.json.jb"
  end
end
