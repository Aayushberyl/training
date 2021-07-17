Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/api/v1/users/:user_id/facts' to: 'api/v1/facts#index'
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :facts 
      end
    end
  end
end
