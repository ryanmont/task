Rails.application.routes.draw do
  devise_for :users
  resources :list_types
  resources :lists
  resources :teams
  resources :mytasks
  resources :chores


  get 'pages/home'

  get 'pages/settings'

  get 'pages/dashboard'

  get 'pages/about'

  get 'pages/other'


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
