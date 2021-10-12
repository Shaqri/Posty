Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users

  resources :users do
    resources :comments, module: :users 
  end

  resources :posts do
    resource :like, module: :posts
    resources :comments, module: :posts 
  end

  resources :comments do
    resources :comments, module: :comments
  end



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

