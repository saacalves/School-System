Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  namespace :admin, path: '/admin' do
    root 'home#index'
    resources :users
    resources :class_schools
    resources :students
    resources :attendances
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
