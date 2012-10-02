Eaglefitness::Application.routes.draw do

  devise_for :admins

  devise_for :users

  resources :activities do
  	resources :coaches
  end
  resources :pages
  resources :events

  root :to => 'pages#index'
end