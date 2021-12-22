class UsersController < ApplicationController
  def index
    if user_signed_in?
      @users = User.order(:id).page(params[:page])
    else
      redirect_to('/users/sign_in')
    end
  end

  def show
    if user_signed_in?
      @user = User.find(params[:id])
    else
      redirect_to('/users/sign_in')
    end
  end
end
