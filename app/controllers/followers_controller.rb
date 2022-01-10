# frozen_string_literal: true

class FollowersController < ApplicationController
  def create
    current_user.follows_as_following.create(following_id: params[:id])
    redirect_to user_path
  end

  def show
    @followers = User.find(params[:id]).followers
    @followers = Kaminari.paginate_array(@followers).page(params[:page]) unless @followers.nil?
  end

  def destroy
    @follow = current_user.follows_as_following.find_by(following_id: params[:id])
    @follow.destroy
    redirect_to user_path
  end
end
