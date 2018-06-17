Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories do
	resources :products
  end

  resources :products

  #get 'api', to:'products#search'

  #get "/search" => 'products#search', as: 'search'


  #match '*all', to: 'static#index', via: [:get]
  root 'products#index'
end
