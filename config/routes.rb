Rails.application.routes.draw do
  get 'main_page/index'

  resources :weekly_horoscopes
  resources :signs
  resources :perfils
  resources :dreams
  resources :daily_horoscopes
  resources :combinations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'main_page#index'
end
