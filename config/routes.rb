Partnerportal::Application.routes.draw do

  root to: "accounts#index"

  resources :packages

  resources :accounts
end
