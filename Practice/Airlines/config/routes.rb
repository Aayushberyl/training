Rails.application.routes.draw do
  # root to: index
  resources :pilots
  resources :flights
  get 'fetcher', to: 'pilots#fetcher'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
