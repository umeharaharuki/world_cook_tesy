Rails.application.routes.draw do
  devise_for :users
  root to: "cooks#index"
  resources :cooks do
  resources :reviews, only: :create
  collection do
    get 'search'
  end
  end
  resources :users, only: :show
end
