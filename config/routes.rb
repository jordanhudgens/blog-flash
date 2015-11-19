Rails.application.routes.draw do
  get 'about', to: 'static#about'

  resources :posts, only: :show
end
