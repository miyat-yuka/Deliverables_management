Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'posts#index'
  get '/posts/:id', to: 'posts#show'
  get 'search', to: 'posts#search'

  resources :users, only: [:index, :edit, :update]
  resources :posts, only: [:index, :create, :new, :edit, :update, :destroy]do
    resources :dealers, only: [:index, :create, :new]
    resources :programs, only: [:index, :create, :new, :show]do
      resources :products, only: [:index, :create, :new, :show]
    end
  end
end