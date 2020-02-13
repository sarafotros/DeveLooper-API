Rails.application.routes.draw do
 
  resources :compositions, only:[:show, :create, :update]
  resources :users, only:[:create]
  
  get '/sounds/:name', to: 'soundsamples#show'
  post '/sounds', to: 'soundsamples#create' 
  post '/users/login', to: 'users#login'
  get '/compositions/list/:user_id', to: 'compositions#list'


end
