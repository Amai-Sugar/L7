class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(name: params[:product][:name], price: params[:product][:price])
    if @product.save
      redirect_to products_index_path
    else
      render products_new_path
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_index_path
  end
end
