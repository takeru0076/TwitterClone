Rails.application.routes.draw do
  resources :posts do
    resource :favorites, only: %i[create destroy]
    resources :comments, only: :create
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, only: [:show]
end
