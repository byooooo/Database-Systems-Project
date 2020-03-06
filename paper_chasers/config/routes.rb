Rails.application.routes.draw do
  get 'home/index'
  get '/home', to: 'home#index' 
  root 'home#index'
 
  resources :institution
  resources :program_comparison
  get '/search', to: 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
