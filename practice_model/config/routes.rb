Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    collection do
      get 'confirm'
    end
  end
  resources :comments
  resources :books
  resources :carts
  resources :orders
  resources :home, only: [:index]
  resources :session, only: [:delete]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  root 'session#new'
end
