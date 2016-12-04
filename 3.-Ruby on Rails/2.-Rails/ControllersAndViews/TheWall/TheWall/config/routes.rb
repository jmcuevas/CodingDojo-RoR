Rails.application.routes.draw do
  root 'users#index'

  post 'register' => 'users#register'
  post 'login' => 'users#login'

  get 'wall' => 'users#wall'
  get 'logout' => 'users#logout'

  post 'messages/create' => 'messages#create'
  post 'comment/create' => 'comments#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
