Rails.application.routes.draw do
  root 'home#index'

  get "signup" => "sessions#signup"

  get "login" => "sessions#new"

  post "login" => "sessions#create"
  
  get "logout" => "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
