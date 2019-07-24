Rails.application.routes.draw do
  devise_for :users

  root to: "burpies#index"

  resources :burpies
end
