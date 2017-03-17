Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  resources :categories do
    resources :products, only: [:index, :new, :create]
  end
  resources :products, only: [:show, :edit, :update, :destroy]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'pages/index' => 'pages#index'
  get 'products' => 'products#index'
  
end
