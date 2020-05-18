class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
  end

  private

  def wishlist_params
    params.require(:wishlist).permit()
  end
end
