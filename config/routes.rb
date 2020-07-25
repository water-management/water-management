Rails.application.routes.draw do
  root to: 'dashboard#index'
  get '/dashboard', to: 'dashboard#index'
  get 'dashboard/input', to: 'dashboard#input'
  devise_for :meter_readers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
