Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'randoms', :controller => 'randoms', :action => 'index'
  get 'random', :controller => 'randoms', :action => 'random'
  # get 'random_list', :controller => 'randoms', :action => 'send_shopping_list'

  resources :recipes
  resources :users
  resources :sessions
  resource :randoms

  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'randoms/shopping_list', to: 'randoms#send_shopping_list', as: :random_list

  get '*unmatched_route', to: 'application#not_found'

end
