Rails.application.routes.draw do
  root to:'homes#index'
  post 'follow/:id' => 'relationships#follow',as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow',as: 'unfollow'
  get 'home/about' => 'homes#about'
  get 'homes/index'
  devise_for :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create,:destroy]
  end
  resources :users
end
