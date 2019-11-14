Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/home'
  get 'pages/about', as: :about
  get 'pages/wheel', as: :wheel

  resources :users

  resources :projects

  resources :hardelements, only: [:index, :show]
  resources :softelements, only: [:index, :show]

end
