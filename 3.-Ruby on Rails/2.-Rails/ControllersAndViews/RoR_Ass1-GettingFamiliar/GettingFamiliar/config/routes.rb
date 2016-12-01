Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello' => 'say#hello'
  get 'say/hello' => 'say#say_hello'
  get 'say/hello/joe' => 'say#hello_joe'
  get 'say/hello/michael' => 'say#hello_michael'
  root 'say#index'
  get 'times' => 'say#times'
  get 'times/restart' => 'say#reset_visits'
end
