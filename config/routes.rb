Rails.application.routes.draw do
  namespace :staff do
    get 'staffs/view'
  end
  namespace :controllers do
    namespace :staff do
      get 'staffs/viewStaff'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'pages#index'
  get 'pages/index', to:'pages#index'
  get 'staff/staffs/view', to:'staffs#viewStaff'
  # Defines the root path route ("/")
  # root "articles#index"
end
