class UserPolicy < ApplicationPolicy
  def show
    true
  end

  def update
    user_profile = User.find(params[:id])
    user_profile == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
