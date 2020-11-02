class CartItemsController < ApplicationController
  def create
    @cartitem = Cartitem.create(qty: params[:cartitem][:qty], product_id: params[:cartitem][:product_id], cart_id: params[:cartitem][:cart_id])
    logger.debug @cartitem.errors.inspect 
    redirect_to carts_show_path
  end

  def destroy
    cartitem = Cartitem.find(params[:id])
    cartitem.destroy
    redirect_to carts_show_path
  end
end
