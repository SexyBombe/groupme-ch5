Groupme::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  resources :groups do 
  	member do
      post :join
      post :quit
    end
    resources :posts
  end

  namespace :account do 
    resources :groups
    resources :posts
  end

  root :to => "groups#index"
end
