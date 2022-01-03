# frozen_string_literal: true

class FollowsController < ApplicationController
  def show
    if Follower.exists?(user_id: params[:id])
      @follows =
        Follower.find(User.find(params[:id]).follower.id).follows.map do |follow|
          User.find(follow.user_id)
        end
      @follows = Kaminari.paginate_array(@follows).page(params[:page])
    else
      @follows = nil
    end
  end
end
