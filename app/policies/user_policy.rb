class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    record == user
  end

  # def my_listings?
  #   record.video_cassettes == user
  # end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
