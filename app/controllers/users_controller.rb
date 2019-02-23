class UsersController < ApplicationController

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

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

  private

  def user_not_authorized
    flash[:alert] = "Access denied."
    byebug
    redirect_to(request.referrer || root_path)
  end
end
