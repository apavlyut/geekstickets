class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit
  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  def check_access
    redirect_to login_path unless current_user
  end

  def current_user
    if session[:current_user_id].present?
      @current_user ||= User.find(session[:current_user_id])
    else
      nil
    end
  end
  helper_method :current_user
end
