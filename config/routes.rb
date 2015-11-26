Rails.application.routes.draw do
  get 'about', to: 'static#about'

  resources :posts, only: [:index, :new, :create]
  get '/post/:id', to: 'posts#show', as: 'post'
  get '/post/:id/edit', to: 'posts#edit'
  patch 'post/:id', to: 'posts#update'
end
