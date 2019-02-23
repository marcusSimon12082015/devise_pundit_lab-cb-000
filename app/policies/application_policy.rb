class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user,record)
    byebug
    @user = user
    @record = record
  end
end
