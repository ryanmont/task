Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/settings'

  get 'pages/dashboard'

  get 'pages/about'

  get 'pages/other'

  resources :teams
  resources :mytasks
  resources :lists
  resources :list_types
  resources :chores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
