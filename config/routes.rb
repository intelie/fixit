Fixit::Application.routes.draw do
  get "fixit/index"

  resources :solutions
  resources :problems
  root :to => 'fixit#index'
end
