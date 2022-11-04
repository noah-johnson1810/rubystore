Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'pages#index'
  get 'pages/index', to:'pages#index'
  get 'receipts', to:'pages#ReceiptsView'
  # Defines the root path route ("/")
  # root "articles#index"
end
