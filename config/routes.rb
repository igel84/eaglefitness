Eaglefitness::Application.routes.draw do

  devise_for :coaches

  resources :categories

  devise_for :admins
  match 'calendar' => "events#calendar"

  devise_for :users

  resources :activities do
    resources :coaches
  end
  resources :pages
  resources :events

  root :to => 'pages#index'
end