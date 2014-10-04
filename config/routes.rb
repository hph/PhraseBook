Rails.application.routes.draw do
  root 'translations#index'

  get '/new', to: 'translations#new'
  post '/create', to: 'translations#create'

  get '/about', to: 'translations#about'
  get '/login', to: 'translations#login'

  get '/translations/:id', to: 'translations#show', as: 'show_translation'

  devise_for :users
end
