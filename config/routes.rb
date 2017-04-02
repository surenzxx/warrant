Rails.application.routes.draw do
  resources :criminals
  resources :crims
  resources :people
  get 'persons/index'
  
  root 'persons#index'
  resources :persons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
