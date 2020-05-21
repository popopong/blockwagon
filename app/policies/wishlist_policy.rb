class WishlistPolicy < ApplicationPolicy
  def index?
    Wishlist.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
