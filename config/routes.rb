Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  get '/', to: 'pages#index', as: :pages
  get '(*path)/add', to: 'pages#new', as: :new_page
  get '(*path)/edit', to: 'pages#edit', as: :edit_page

  patch '(*path)', to: 'pages#update', as: :page
  put '(*path)', to: 'pages#update'
  post '(*path)', to: 'pages#create' 
  get '*path', to: 'pages#show'
  delete '*path', to: 'pages#destroy', as: :destroy_path
end
