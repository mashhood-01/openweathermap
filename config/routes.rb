Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :weathers, only: [:index]
  get '/weathers/search', to: 'weathers#search'
  root 'weathers#index'
end
