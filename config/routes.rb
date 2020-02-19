Rails.application.routes.draw do
  get 'contact/index'
  get 'terms/index'
  resources :acceuil 
  root 'accueil#index'
  resources :declarations
  resources :lamairies
  resources :provinces
  resources :sexes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
