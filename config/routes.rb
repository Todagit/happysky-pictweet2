Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  namespace :tweets do
    resources :searches, only: :index
  end
  resources :tweets do
    resources :comments, only: :create
    # collection do
    #   get 'search'
    # end
  end
  resources :users, only: :show
end

