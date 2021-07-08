Rails.application.routes.draw do
  resources :departments
  root to: 'index#nav'
  #resources :students
  get '/home', to: 'index#nav'
  post '/students', to: 'student#create'
  get '/student/new', to: 'student#form'
  
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
  # get 'student', to: 'student#new'
  post '/student', to: 'student#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
