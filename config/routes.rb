Rails.application.routes.draw do
  
  resources :categories
  
  resources :orders do
    resources:orderitems
  end
  
  devise_for :users do 
    resources :orders 
  end
  
  get '/checkout' => 'cart#createOrder'
  
  
  get '/paid/:id' => 'static_pages#paid'
  
  get 'cart/index'

  resources :products

  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  
  get '/profile', to: 'user#profile'
  
  get '/login', to: 'user#login'
  
  get '/logout', to: 'user#logout'
  
  get '/cart/clear', to: 'cart#clearCart'
  
  get '/cart', to: 'cart#index'
  
  get '/cart/:id', to: 'cart#add'
  
  get 'cart/remove/:id' => 'cart#remove'
  
  get '/decrease/:id' => 'cart#decrease'
  
  get '/increase/:id' => 'cart#increase'
  
  post '/search' => 'products#search'
  
  get 'category/:title' => 'static_pages#category'
  
  get '/confirmation/:id' => 'static_pages#confirmation'
  
  get '/upgrade/:id' => 'static_pages#upgrade'
  
  get '/downgrade/:id' => 'static_pages#downgrade'
  
  get '/allusers', to: 'static_pages#allusers'

  root :to => 'site#home'

end
