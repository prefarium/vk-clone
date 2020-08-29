Rails.application.routes.draw do
  resources :posts
  devise_for :users

  root 'welcome_pages#show'

  resource  :welcome_page, only: [:show]
  resources :users,        only: [:show]
end
