class WishlistPolicy < ApplicationPolicy
  def show?
    Wishlist.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
