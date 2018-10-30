Rails.application.routes.draw do
  get 'list_items/toggle_status'

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
  

# resources :lists do
#   member do
#     get :toggle_status
#   end
# end

  root to: 'list_types#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
