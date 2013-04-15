Partnerportal::Application.routes.draw do

  devise_for :users

  root to: "static#index"

  resources :packages

  resources :accounts
end
