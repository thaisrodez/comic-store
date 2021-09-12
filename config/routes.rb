Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'comics#index'
  get 'comics', to: 'comics#index'
  get 'comics/:id', to: 'comics#show', as: :comic
end
