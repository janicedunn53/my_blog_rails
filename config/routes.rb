Rails.application.routes.draw do
  resources :posts do
    resources :tags
  end
end
