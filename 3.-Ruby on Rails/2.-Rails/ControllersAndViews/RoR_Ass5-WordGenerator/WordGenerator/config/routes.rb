Rails.application.routes.draw do
  get 'generator/generate' => 'generator#generate'

  root :to => 'generator#generate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
