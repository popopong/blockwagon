class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
  end

  # Form to add a VHS to wishlist will be on the Videos Show page

  def create
    @wishlist = Wishlist.new(wishlist_params)
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
  end

  private

  def wishlist_params
    params.require(:wishlist).permit()
  end
end
