# frozen_string_literal: true

class FollowsController < ApplicationController
  def create
    current_user.follows_as_following.create(following_id: params[:id])
    redirect_to user_path
  end

  def show_followers
    @followers = User.find(params[:id]).followers
    @followers = Kaminari.paginate_array(@followers).page(params[:page]) unless @followers.nil?
  end

  def show_followings
    @follows = User.find(params[:id]).followings
    @follows = Kaminari.paginate_array(@follows).page(params[:page])
  end

  def destroy
    @follow = current_user.follows_as_following.find_by(following_id: params[:id])
    @follow.destroy
    redirect_to user_path
  end
end
