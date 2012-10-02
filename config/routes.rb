Eaglefitness::Application.routes.draw do

  resources :activities do
  	resources :coaches
  end
  resources :pages
  resources :events

  root :to => 'pages#index'
end