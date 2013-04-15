Partnerportal::Application.routes.draw do

  devise_for :users

  root to: "accounts#index"

  resources :packages

  resources :accounts
end
