Rails.application.routes.draw do
  resources :recipes
  resources :steps
  resources :ingredients
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
