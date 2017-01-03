Rails.application.routes.draw do
  root 'users#index'

  post 'sessions/create' => 'sessions#create'
  get 'sessions/destroy' => 'sessions#destroy'

  post 'comments/create' => 'comments#create'

  get 'events' => 'events#index'
  get 'events/:id' => 'events#show'
  get 'events/:id/edit'=> 'events#edit'
  post 'events/create' => 'events#create'
  patch 'events/:id' => 'events#update'
  get 'events/:user_id/:event_id' => 'events#join'
  delete 'events/:id' => 'events#destroy'

  get 'users/index'
  post 'users/create' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id'=> 'users#update'
  delete 'users/:id' => 'users#destroy'
end
