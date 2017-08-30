Rails.application.routes.draw do
  get 'sessions/new'

	root 'parkeve_pages#home'

  get '/help', to: 'parkeve_pages#help'

  get '/propietor', to: 'parkeve_pages#propietor'

  get '/signup', to: 'users#new'
  
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/contact', to: 'parkeve_pages#contact'

  get '/about', to: 'parkeve_pages#about'

  resources :users
end
