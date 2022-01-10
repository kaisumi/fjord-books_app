# frozen_string_literal: true

module FollowsHelper
  def follower?
    follower = User.find(current_user.id)
    follower.followings.exists?(id: params[:id])
  end
end
