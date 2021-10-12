Rails.application.routes.draw do
  resources :events
  root to: "posts#index"
  devise_for :users

  resources :users do
    member do
      post :follow
    end
    resources :comments, module: :users 
  end

  resources :posts do
    member do
      post :bookmark
    end
    resource :like, module: :posts
    resources :comments, module: :posts
  end

  resources :comments do
    resources :comments, module: :comments
  end



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

