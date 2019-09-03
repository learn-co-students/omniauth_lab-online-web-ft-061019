Rails.application.routes.draw do
  root 'welcome#home'
  get 'sessions/new'
  get 'sessions/create'
  get '/auth/facebook/callback' => 'sessions#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
