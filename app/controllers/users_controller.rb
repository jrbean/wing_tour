class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, flash: { notice: "Profile updated."}
    else
      redirect_to @user, flash: { error: @user.errors.full_messages.to_sentence }
    end
  end

  private

  def user_params
    params.require(:user).permit(:bio)
  end
end
