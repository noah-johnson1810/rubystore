Rails.application.routes.draw do
  get 'employees/index', to: 'employees#index'
  get 'employees/delete/:id', to: 'employees#destroy'
  resources :employees

  get 'customers/index', to: 'customers#index'
  resources :customers

  get 'orders/index', to: 'orders#index'
  resources :orders

  get 'products/index', to: 'products#index'
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'pages#index'
  get 'pages/index', to:'pages#index'

end
