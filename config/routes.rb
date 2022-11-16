Rails.application.routes.draw do
  get 'staffs/index', to: 'staffs#index'
  resources :staffs

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'pages#index'
  get 'pages/index', to:'pages#index'

  # root "articles#index"
end
