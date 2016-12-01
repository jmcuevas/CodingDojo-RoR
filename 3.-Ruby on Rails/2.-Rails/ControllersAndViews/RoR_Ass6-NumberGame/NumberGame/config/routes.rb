Rails.application.routes.draw do
  root 'numbers#index'

  get 'numbers/index'

  post 'numbers/try' => 'numbers#try'

  get 'numbers/restart' => 'numbers#restart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
