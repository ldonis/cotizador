class  ApplicationLoggedController < ApplicationController
  before_action :require_login
  def require_login
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
