Rails.application.routes.draw do
  devise_for :users
  root "welcome#home"
  resources :users, only: [:show]
  
  resources :categories do
    resources :items, only: [:new, :edit]
    
  end
  resources :comments, only: [:create, :delete]
  resources :items, only: [:index, :show, :update, :destroy, :create]
end
