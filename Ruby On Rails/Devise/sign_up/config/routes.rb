Rails.application.routes.draw do
  root to: "home#index"
  devise_for :log_ins
  # devise_for :log_ins , controllers: {omniauth_callbacks: 'log_ins/omniauth_callbacks'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
