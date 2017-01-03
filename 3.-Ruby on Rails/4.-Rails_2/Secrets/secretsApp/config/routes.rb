Rails.application.routes.draw do
  root 'sessions#new'
  get '/sessions/new' => 'sessions#new'
  delete '/sessions' => 'sessions#logout'

  post '/users/login' => 'users#login'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id/' => 'users#update'
  delete '/users/:id' => 'users#destroy'
  post '/users/create' => 'users#create'

  get '/secrets' => 'secrets#show'
  post '/secrets/create' => 'secrets#create'
  delete '/secrets/:secret_id' => 'secrets#destroy'

  get '/likes/create' => 'likes#like'
  delete '/likes' => 'likes#unlike'
end
