Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root 'home#index'
  
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
