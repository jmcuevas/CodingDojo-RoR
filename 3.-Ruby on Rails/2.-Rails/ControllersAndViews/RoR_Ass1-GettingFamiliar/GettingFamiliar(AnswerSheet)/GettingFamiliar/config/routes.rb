Rails.application.routes.draw do
  # all the get request URLs on the left were determined by the assignment
  # all the controller#method_names on the right I determined.
  # you do not have to abide by the assignment suggesting you should have a controller
  # named 'Say' but I did.
  get 'hello' => 'say#hello'
  get 'say/hello' => 'say#say_hello'
  get 'say/hello/joe' => 'say#say_hello_joe'
  get 'say/hello/michael' => 'say#say_hello_michael'
  root 'say#index'
  get 'times' => 'say#how_many_visits'
  get 'times/restart' => 'say#reset_visits'
end
