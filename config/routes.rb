Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'randoms', :controller => 'randoms', :action => 'index'
  get 'random', :controller => 'randoms', :action => 'random'

  resources :recipes
  resources :steps
  resources :ingredients
  resources :users
  resources :sessions
  resource :randoms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
end
