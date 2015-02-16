Rails.application.routes.draw do

  devise_for :users
  resources :posts


  get 'about' => 'welcome#about'

  root to: 'welcome#index'
  #root is a method that takes a hash as a an argument
  #  root({to: 'welcome#index'})
end

