class UserPolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    byebug
    user.admin? || record.id == user.id
  end
end
