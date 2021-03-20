Rails.application.routes.draw do
  root to:'homes#index'
  get 'users/about' => 'homes#about'
  get 'users/show'
  get 'homes/index'
  devise_for :users

end
