Rails.application.routes.draw do
  namespace :staff do
    get 'staffs/view'
    get 'staffs/new'
    get 'staffs/create'
  end
  namespace :controllers do
    namespace :staff do
        get 'staffs/viewStaff'
        get 'staffs/new'
        post 'staffs/create'
      end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'pages#index'
  get 'pages/index', to:'pages#index'
  get 'staff/staffs/view', to:'staffs#View'
  get 'staff/staffs/new', to: 'staffs#New'
  post 'staff/staffs/new', to: 'staffs#create'

  # root "articles#index"
end
