class UsersController < ApplicationController
  def index
    if user_signed_in?
      @user = authorize User.find(current_user.id)
    end
  end

  def show
    if user_signed_in?
      byebug
      @user = authorize User.find(params[:id].to_i)
    end
  end
end
