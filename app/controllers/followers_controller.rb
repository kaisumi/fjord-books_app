# frozen_string_literal: true

class FollowersController < ApplicationController
  def index
    @followers = User.find(params[:user_id]).followers.page(params[:page])
  end

  def create
    current_user.follows_as_following.create(following_id: params[:user_id])
    redirect_to user_path(id: params[:user_id])
  end

  def destroy
    @follow = current_user.follows_as_following.find_by(following_id: params[:user_id])
    @follow.destroy
    redirect_to user_path(id: params[:user_id])
  end
end
