Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get '/posts/:id', to: 'posts#show'
  # get '/posts/:id', to: 'posts#destroy'

  resources :users, only: [:index, :edit, :update]
  resources :posts, only: [:index, :create, :new, :edit, :update, :destroy]do
    resources :programs, only: [:index, :create, :new, :show]do
      resources :hards, only: [:index, :create, :new, :show]do
        resources :products, only: [:index, :create, :new, :show]
      end
    end
  end
end