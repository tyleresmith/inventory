Rails.application.routes.draw do
  devise_for :users
  root "welcome#home"
  resources :users, only: [:show]
  
  resources :categories do
    resources :items, :only => [:new, :edit]
  end

  resources :items, only: [:index, :show, :update, :destroy, :create]
end
