Rails.application.routes.draw do
  root to: 'index#nav'
  get '/home', to: 'index#nav'
  get '/student', to: 'student#form'
  get '/faculty', to:'faculty#form'
  get '/guardian', to:'guardian#form'
  get '/course', to:'course#form'
  get '/feedback', to:'feedback#form'
  get '/certification', to:'certification#form'
  # get '/employee',
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
