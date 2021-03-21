Rails.application.routes.draw do
  root to:'homes#index'
  get 'users/about' => 'homes#about'
  get 'homes/index'
  devise_for :users
  resources :books
  resources :users,only:[:edit]
end
