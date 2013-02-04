module ActsAsBloggable
  class ApplicationController < ActionController::Base

    private

    # check if current user is not available then redirect it to login url
    def authenticate
      requested_path = request.path
      session[:user_requested_path] = nil
      if current_user.blank? && !requested_path.include?("login")
        session[:user_requested_path] = requested_path
        redirect_to login_path
      end
    end

    # get the current logged in user object
    # @return [Crowd::User]
    def current_user
      @current_user ||= ActsAsBloggable::User.find(session[:user_id]) if session[:user_id]
    rescue
      @current_user = nil
    end
  end
end
