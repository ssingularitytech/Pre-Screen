require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  # Admin authentication
  devise_for :admin_users

  authenticated :admin_user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

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
        post :import_invitees
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

  root to: redirect('/admin')
end
