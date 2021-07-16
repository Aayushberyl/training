Rails.application.routes.draw do
  devise_for :log_ins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
