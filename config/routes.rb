Rails.application.routes.draw do
  resources :articles
  resources :accounts
  get 'admin/dashboard'

  get 'admin/stats'

  get 'admin/financials'

  get 'admin/settings'

  get 'about', to: 'static#about'

  resources :posts, only: [:index, :new, :create]
  get '/post/:id', to: 'posts#show', as: 'post'
  get '/post/:id/edit', to: 'posts#edit'
  patch 'post/:id', to: 'posts#update'
end
