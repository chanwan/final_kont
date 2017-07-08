Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'books#index'

namespace :admin do
resources :authors, :books, :categories
end
resources :authors, :books, :categories
end
