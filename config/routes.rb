Blocitoff::Application.routes.draw do


  resources :todos, only: [:new]
end
  
