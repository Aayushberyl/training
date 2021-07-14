Rails.application.routes.draw do
  resources :departments
  root to: 'index#nav'
  #resources :students
  get '/home', to: 'index#nav'
  get '/student' , to: 'student#form'
  post '/student', to: 'student#create'
  get '/student/show', to: 'student#show'
  put '/student.:id' , to: 'student#edit'
  patch 'student.:id', to: 'student#update'
  delete 'student.:id', to: 'student#destroy'
  get '/faculty', to: 'faculty#form'
  post '/faculty', to: 'faculty#create'
  get '/faculty/show', to: 'faculty#show'
  put '/faculty.:id' , to: 'faculty#edit'
  patch 'faculty.:id', to: 'faculty#update'
  delete 'faculty.:id', to: 'faculty#destroy'
  get '/guardian', to: 'guardian#form'
  post '/guardian', to: 'guardian#create'
  get '/guardian/show', to: 'guardian#show'
  put '/guardian.:id' , to: 'guardian#edit'
  patch 'guardian.:id', to: 'guardian#update'
  delete 'guardian.:id', to: 'guardian#destroy'
  get '/course', to: 'course#form'
  post '/course', to: 'course#create'
  get '/course/show', to: 'course#show'
  get '/course/:id/edit' , to: 'course#edit'
  patch 'course.:id', to: 'course#update'
  delete 'course/:id', to: 'course#destroy'
  get '/feedback', to: 'feedback#form'
  post '/feedback', to: 'feedback#create'
  get '/feedback/show', to: 'feedback#show'
  get '/feedback/:id/edit' , to: 'feedback#edit'
  patch 'feedback.:id' , to: 'feedback#update'
  delete '/feedback/:id' , to: 'feedback#destroy'
  get '/certification', to: 'certification#form'
  post '/certification', to: 'certification#create'
  get '/certification/show', to:'certification#show'
  put '/certification.:id' , to: 'certification#edit'
  patch 'certification.:id', to: 'certification#update'
  delete 'certification.:id', to: 'certification#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
