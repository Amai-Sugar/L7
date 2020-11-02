class CartsController < ApplicationController
  def show
    @cart_items = Cartitem.all
  end
end
