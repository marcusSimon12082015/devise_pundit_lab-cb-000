class UsersController < ApplicationController
  def index
    if user_signed_in?
      @user = authorize User.find_by(current_user.id)
    end
  end

  def show
    if user_signed_in?
      @user = authorize User.find_by(current_user.id)
      if @user.nil?
        flash[:alert] = "Access denied."
        redirect_to root_path
      end
    else
      flash[:alert] = "Access denied."
      redirect_to root_path
    end
  end
end