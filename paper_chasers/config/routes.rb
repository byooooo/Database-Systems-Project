Rails.application.routes.draw do
  get 'search/index'
 
  resources :institution

  root 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
