Eaglefitness::Application.routes.draw do

  resources :user_events

  devise_for :coaches

  resources :categories


  match 'succses' => "events#succses"

  devise_for :users
  

  resources :coaches
  resources :users

  resources :pages
  resources :events

  root :to => 'pages#index'
end