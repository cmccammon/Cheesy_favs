Rails.application.routes.draw do

  resources :cheeses
  resources :users

  get    '/favorites', to: 'favorites#index', as: 'new_favorite'
  post   '/favorite', to: 'favorites#create', as: 'favorite'
  delete '/unfavorite', to: 'favorites#destroy', as: 'unfavorite'

  get    '/login',  to: 'sessions#new',     as: 'new_login'
  post   '/login',  to: 'sessions#create',  as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

root 'cheeses#index'
end
