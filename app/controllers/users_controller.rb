class UsersController < ApplicationController
  def index
    if user_signed_in?
      @user = authorize User.find_by(current_user.id)
    end
  end

  def show
    if user_signed_in?
      @user = authorize User.find_by(current_user.id)
    end
  end

end
