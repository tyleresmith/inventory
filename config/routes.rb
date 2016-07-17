Rails.application.routes.draw do
  devise_for :users
  root "welcome#home"
  resources :users, only: [:show]
  
  resources :inventories do
    resources :items, :only => [:new]
  end

  resources :items, only: [:index, :show, :edit, :update, :destroy, :create]
end
