Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users' => 'users#display_users'
  get 'users/new' => 'users#new'
  get 'users/total' => 'users#total_users'
  get 'users/create' => 'users#create'
  get 'users/:id' => 'users#show_user'
  get 'users/:id/edit' => 'users#edit_user'
end
