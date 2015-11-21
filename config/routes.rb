Rails.application.routes.draw do
  get 'about', to: 'static#about'

  resources :posts, only: [:index, :new, :create]
  get '/post/:id', to: 'posts#show', as: 'post'
end
