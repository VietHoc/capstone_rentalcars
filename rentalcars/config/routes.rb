  Rails.application.routes.draw do
  get 'requests/new'

  get 'cars/new'
  get 'cars/show'
  get 'cars/edit'
  get 'cars/update'
  get 'cars/destroy'
  get 'cars/search'

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'users/new'
  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  patch '/password_create', to: 'users#password_create'
  resources :users 
  resources :cars
  resources :searches
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
