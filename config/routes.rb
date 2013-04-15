Partnerportal::Application.routes.draw do

  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

  root to: "static#index"

  resources :packages

  resources :accounts

  resources :related_accounts
end
