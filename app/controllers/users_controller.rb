# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.with_attached_avatar.order(:id).page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @follower_number = @user.follows.count
    @follow_number = Follower.exists?(user_id: params[:id]) ? Follower.find_by(user_id: params[:id]).follows.count : 0
  end
end
