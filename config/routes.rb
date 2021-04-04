Rails.application.routes.draw do
  root to:'homes#index'
  get 'home/about' => 'homes#about'
  get 'homes/index'
  devise_for :users
  resources :books do
    resources :book_comments, only: [:create,:destroy]
  end
  resources :users
end
