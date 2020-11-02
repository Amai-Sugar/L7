Rails.application.routes.draw do
  get 'carts/show'
  post 'cart_items/create'
  delete 'cart_items/:id' => 'cart_items#destroy'
  root 'top#main'
  get 'top/main'
  get 'products/index'
  get 'products/new'
  post 'products/create'
  delete 'products/:id' => 'products#destroy'
end
