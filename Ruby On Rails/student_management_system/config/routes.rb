Rails.application.routes.draw do
  root to: 'index#nav'
  get '/home', to: 'index#nav'
  get '/student', to: 'student#form'
  get '/show_student', to: 'student#show'
  get '/faculty', to:'faculty#form'
  get '/show_faculty', to:'faculty#show'
  get '/guardian', to:'guardian#form'
  get '/course', to:'course#form'
  get '/show_course', to:'course#show'
  get '/feedback', to:'feedback#form'
  get '/show_feedback', to:'feedback#show'
  get '/certification', to:'certification#form'
  get '/show_certification', to:'certification#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
