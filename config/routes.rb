Rails.application.routes.draw do
	root 'parkeve_pages#home'

  get '/help', to: 'parkeve_pages#help'

  get '/propietor', to: 'parkeve_pages#propietor'

  get  '/signup',  to: 'users#new'
  
  post '/signup',  to: 'users#create'

  get '/login', to: 'parkeve_pages#login'

  get '/contact', to: 'parkeve_pages#contact'

  get '/about', to: 'parkeve_pages#about'

  resources :users
end
