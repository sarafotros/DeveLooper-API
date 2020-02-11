Rails.application.routes.draw do
 
  resources :compositions, only:[:show, :create, :update]
  resources :users, only:[:show, :create]
  
  get '/sounds/:name', to: 'soundsamples#show'
  post '/sounds', to: 'soundsamples#create' 



end
