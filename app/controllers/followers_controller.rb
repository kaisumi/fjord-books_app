# frozen_string_literal: true

class FollowersController < ApplicationController
  def create
    @follower = Follower.find_or_create_by(user_id: current_user.id)
    @follower.follows.create(user_id: params[:id])
    redirect_to user_path
  end

  def show
    @followers = \
      User.find(params[:id]).follows.map do |follower|
        User.find(Follower.find(follower.follower_id).user_id)
      end
    @followers = Kaminari.paginate_array(@followers).page(params[:page]) unless @followers.nil?
  end

  def destroy
    @follow = Follow.find_by(user_id: params[:user_id], follower_id: current_user.follower.id)
    @follow.destroy
    redirect_to user_path
  end
end
