Rails.application.routes.draw do
  resources :words, only: [:index, :create, :new, :show]
  root 'words#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
