class TopController < ApplicationController
  def main
    @products = Product.all
    @cartitem = Cartitem.new()
    @cart = Cart.create()
    if session[:cart_id] ==nil
      session[:cart_id] = @cart.id
    else
    end
  end
end
