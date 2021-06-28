# frozen_string_literal: true

Rails.application.routes.draw do
  resources :words, only: %i[index new create]
  resources :words, path: '', except: %i[index new create]
  root 'words#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
