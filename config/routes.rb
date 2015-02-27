Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:update]
  
        #"deep nesting"
  # resources :topics do
  #   resources :posts, except: [:index] do
  #     resources :comments, only: [:create, :destroy]
  #   end
  # end

        # "shallow nesting"
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do # [] creates /posts/:post_id/comments and prevents posts/:id
    resources :comments, only: [:create, :destroy]
  end



  get 'about' => 'welcome#about'

  root to: 'welcome#index'
  #root is a method that takes a hash as a an argument
  #  root({to: 'welcome#index'})
end

