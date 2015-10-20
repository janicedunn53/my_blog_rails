Rails.application.routes.draw do
  root :to => 'static#index'

  resources :posts
  resources :tags
end
