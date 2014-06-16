Blocitoff::Application.routes.draw do

  get "welcome/index"
  get "welcome/about"
  devise_for :users
  root :to => "welcome#index"
  resources :todos
end
  
