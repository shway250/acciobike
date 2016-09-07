Rails.application.routes.draw do
  # get 'user/create'

  # get 'user/destroy'

  # get 'user/edit'

  # get 'user/index'

  # get 'user/new'

  # get 'user/show'

  # get 'user/update'

  resources :user

  root 'home#index'

  get "login" => "sessions#new"

  post "login" => "sessions#create"
  
  get "logout" => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
