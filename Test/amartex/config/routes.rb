Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'index#nav'
  post '/', to: 'index#nav'
  get '/jquery/', to: 'index#jquery_practice'
  get '/ajax/', to: 'index#ajax_practice'
  # post '/ajax/', to: 'index#ajax_practice'
  get '/product/new' , to: 'product#form'
  post 'product/' , to: 'product#create'
 	get 'product/show' , to: 'product#show'
 	put '/product.:id' , to: 'product#edit'
 	patch 'product.:id', to: 'product#update'
 	delete 'product.:id' , to: 'product#destroy'
  get 'product/temp' , to: 'product#templates'
 	get '/customer/new' , to: 'customer#form'
  post 'customer/' , to: 'customer#create'
  get 'customer/show' , to: 'customer#show'
 	put '/customer.:id' , to: 'customer#edit'
 	patch 'customer.:id', to: 'customer#update'
 	delete 'customer.:id' , to: 'customer#destroy'
 	get 'customer/temp1' , to: 'customer#temp1'
  post 'customer/draft', to: 'customer#draft'

end
