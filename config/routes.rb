Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
  get 'home/about' => 'homes#about', as:'about'
end