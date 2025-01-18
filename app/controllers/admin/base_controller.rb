module Admin
  class BaseController < ApplicationController
    before_action :authenticate_admin_user!
    layout 'admin'

    def current_user
      current_admin_user
    end
    helper_method :current_user

    private

    def authorize_admin!
      unless current_admin_user
        flash[:alert] = "You are not authorized to access this area."
        redirect_to root_path
      end
    end
  end
end 