Rails.application.routes.draw do

  resources :items
  post 'authenticate', to: 'authentication#authenticate'
end
