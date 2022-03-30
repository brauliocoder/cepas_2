Rails.application.routes.draw do
  root to: 'wines#index'
  
  resources :strains
  get '/wines/:id/add_new', to: 'wines#add_new', as: 'add_new'
  resources :wines

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
