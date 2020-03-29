Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/sessions/', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/secrets', to: 'secrets#show'
  delete '/sessions', to: 'sessions#destroy'
end
