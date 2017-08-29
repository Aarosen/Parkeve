Rails.application.routes.draw do
  get '/help', to: 'parkeve_pages#help'

  get '/propietor', to: 'parkeve_pages#propietor'

  get '/signup', to: 'parkeve_pages#signup'

  get '/login', to: 'parkeve_pages#login'

  get '/contact', to: 'parkeve_pages#contact'

  get '/about', to: 'parkeve_pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'parkeve_pages#home'
end
