Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "invoice#index"
  get '/invoice/new', to: 'invoice#new', as: 'new_invoice'
  post '/invoice', to: 'invoice#create', as: 'create_invoice'
  get 'invoice/:id/edit', to: 'invoice#edit', as: 'edit_invoice'
  patch 'invoice/:id/update', to: 'invoice#update', as: 'update_invoice'
end
