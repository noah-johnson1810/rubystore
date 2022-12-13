Rails.application.routes.draw do
  get 'employees/index', to: 'employees#index'
  get 'employees/delete/:id', to: 'employees#destroy'
  resources :employees

  get 'customers/index', to: 'customers#index'
  get 'customers/delete/:id', to: 'customers#destroy'
  resources :customers

  get 'orders/index', to: 'orders#index'
  get 'orders/delete/:id', to: 'orders#destroy'
  resources :orders

  get 'products/index', to: 'products#index'
  get 'products/delete/:id', to: 'products#destroy'
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'pages#index'
  get 'pages/index', to:'pages#index'

end
