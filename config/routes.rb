Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "sofas#homeindex"

  resources :users, except: [:edit, :destroy, :update, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :sofas
  resources :customers
end
