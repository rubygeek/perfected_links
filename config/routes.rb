Rails.application.routes.draw do
  resources :curated_links
  resources :admin_users
  resources :tags
  resources :link_categories
  resources :links
  resources :categories
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

end
