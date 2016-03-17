class SessionsController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped
  def create
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
