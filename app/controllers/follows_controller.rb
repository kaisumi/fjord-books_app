# frozen_string_literal: true

class FollowsController < ApplicationController
  def show
    @follows = \
      Follower.find(User.find(params[:id]).follower.id).follows.map do |follow|
        User.find(follow.user_id)
      end
    @follows = Kaminari.paginate_array(@follows).page(params[:page]) unless @follows.nil?
  end
end
