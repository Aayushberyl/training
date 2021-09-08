Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'index#nav'
  get '/customer/show', to: 'customer#show'
  get '/product/new' , to: 'product#form'
  post 'product/' , to: 'product#create'
 	get 'product/show' , to: 'product#show'
 	put '/product.:id' , to: 'product#edit'
 	patch 'product.:id', to: 'product#update'
 	delete 'product.:id' , to: 'product#destroy'
 	get 'product/temp' , to: 'product#templates'

end
