Rails.application.routes.draw do

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  root to: 'welcome#index'
  #root is a method that takes a hash as a an argument
  #  root({to: 'welcome#index'})
end

