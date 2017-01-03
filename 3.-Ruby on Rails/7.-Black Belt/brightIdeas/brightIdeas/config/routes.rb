Rails.application.routes.draw do
  root "main#index"

  post 'likes/create' => 'likes#create'
  get 'likes/destroy'

  get 'sessions/index'
  post 'sessions/create' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'

  get 'users/:id' => 'users#show'
  post 'users/create' => 'users#create'

  get 'bright_ideas' => 'bright_ideas#index'
  get 'bright_ideas/:id' => 'bright_ideas#show'
  post 'bright_ideas/create' => 'bright_ideas#create'
  delete 'bright_ideas/:id' => 'bright_ideas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
