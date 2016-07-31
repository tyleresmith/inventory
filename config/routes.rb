Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root "welcome#home"
  resources :users, only: [:show, :index]
  
  resources :categories do
    resources :items, only: [:new, :edit]    
  end

  resources :comments, only: [:create, :delete, :show]
  resources :items, only: [:index, :show, :update, :destroy, :create]
end
