Rails.application.routes.draw do
  # Admin authentication
  devise_for :admin_users

  # Admin namespace
  namespace :admin do
    resources :topics do
      resources :questions
    end
    
    resources :tests do
      member do
        get :results
        get :analytics
      end
      resources :invitees, only: [:index, :create, :destroy]
    end
    
    root to: 'dashboard#index'
  end

  # Public routes
  resources :tests, only: [:show] do
    member do
      post :start
      post :submit_answer
      post :complete
    end
  end

  # Sidekiq web interface
  require 'sidekiq/web'
  authenticate :admin_user do
    mount Sidekiq::Web => '/sidekiq'
  end

  root to: redirect('/admin')
end
