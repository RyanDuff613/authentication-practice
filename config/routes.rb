Rails.application.routes.draw do

  get '/signup' => 'users#draw'
  post '/users' => 'users#create'
  
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get 'signout' => 'sessions#destroy'



end
