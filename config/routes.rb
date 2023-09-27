Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :posts, only: [:index, :show, :destroy, :new, :create] do
    resources :comments, only: [:new, :create]
  end

  resources :comments, only: [:destroy]
end
