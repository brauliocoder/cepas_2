class ApplicationController < ActionController::Base
  before_action :authenticate_friend!
  before_action :is_admin?, only: %i[ new add_new create edit update destroy ]

  private
    def is_admin?
      if friend_signed_in?
        redirect_to root_path unless current_friend.admin
      end
    end
end
