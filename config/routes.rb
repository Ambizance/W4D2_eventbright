Rails.application.routes.draw do
  root to: "events#index"
  get 'events/index'
  get 'event/new'
  devise_for :users
  get 'users/new'
  get 'users/create'
  get 'users/index'
  get 'users/destroy'
  get 'users/update'
  get 'users/show'
resources :users
resources :events
resources :static_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
