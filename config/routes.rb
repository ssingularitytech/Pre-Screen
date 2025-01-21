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
        post :send_bulk_invitations
      end
      resources :invitees do
        member do
          post :resend_invitation
        end
      end
    end
    
    root to: 'dashboard#index'
  end

  # Public routes
  resources :tests, only: [:show] do
    member do
      post :start
      post :answer
    end
  end

  # Sidekiq web interface
  require 'sidekiq/web'
  authenticate :admin_user do
    mount Sidekiq::Web => '/sidekiq'
  end

  root to: redirect('/admin')
end
