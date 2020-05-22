class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    skip_authorization
    skip_policy_scope
  end

  def edit
    @user = User.find(params[:id])
    
    authorize @user
  end

  def update
    @user = User.find(params[:id])

    authorize @user

    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def my_listings
    @listings = VideoCassette.all
    @my_listings = @listings.select do |list|
      list.user == current_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :about)
  end
end
