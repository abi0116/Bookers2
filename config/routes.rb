Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index,:show,:edit,:update]
  resources :books, only: [:index,:show,:edit,:destroy,:update,:create]
  root 'homes#top'
  get 'home/about' => 'homes#about'
end
