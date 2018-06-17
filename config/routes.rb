Rails.application.routes.draw do
  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  get 'randoms' => 'randoms#index'
  get 'random' => 'randoms#random'

  resources :recipes
  resources :users

  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'randoms/shopping_list', to: 'randoms#send_shopping_list', as: :random_list

  get '*unmatched_route', to: 'application#not_found'

end
