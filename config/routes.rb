Rails.application.routes.draw do
  devise_for :users
  root to: "cooks#index"
  resources :cooks
end
