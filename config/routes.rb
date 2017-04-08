Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stress/', to: 'page#stress'
  root 'page#index'
end
