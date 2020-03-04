Rails.application.routes.draw do
  get 'search/index'
 
  resources :institution
  resources :program_comparison
  root 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
