Rails.application.routes.draw do

    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :sessions

  resources :users

  root 'users#index'

  get 'garages/' => 'garages#index'

  get 'garages/new' => 'garages#new'

  get 'garages/:id' => 'garages#show', as: :garage

  post 'garages/'  => 'garages#create'

  get 'garages/:id/edit' => 'garages#edit', as: :edit_garage

  patch 'garages/:id' => 'garages#update'

  delete  'garages/:id' => 'garages#destroy'

end
