Rails.application.routes.draw do

  get "bills", to: "billings#index", as: "home"
  post "billings", to: "billings#create"
  get "billings/new", to: "billings#new", as: "thalavali"
  get "billings/:id/edit", to: "billings#edit"
  get "billings/(:id)", to: "billings#index", as: "billshow"
  put "billings/:id", to: "billings#update"
  patch "billings/:id", to: "billings#update"
  delete "billings/:id", to: "billings#destroy", as: "big_show"
  resources :customers do
    get "/steeck", to: "customers#steeck", on: :collection
  end
  concern :product do
    resources :products
  end
  resources :companies, concerns: :product
  resources :users
  root to: "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
