Rails.application.routes.draw do

  root 'users#index'
  get '/users/new' => 'users#new'
  post 'users/create' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/delete' => 'users#delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
