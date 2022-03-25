Rails.application.routes.draw do
  resources :strains
  get '/wines/:id/add_new', to: 'wines#add_new', as: 'add_new'
  resources :wines

  root 'wines#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
