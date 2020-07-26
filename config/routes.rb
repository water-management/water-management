Rails.application.routes.draw do
  root to: 'dashboard#index'
  get '/dashboard', to: 'dashboard#index'
  post 'dashboard/search', to: 'dashboard#search'
  get 'dashboard/input', to: 'dashboard#input'
  post 'dashboard/submit', to: 'dashboard#submit'
  devise_for :meter_readers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
