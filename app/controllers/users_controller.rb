class UsersController < ApplicationController

  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  # PATCH /users/1
  # def update
  # end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
