# frozen_string_literal: true

module FollowsHelper
  def follower?
    follower = Follower.find_by(user_id: current_user.id)
    (Follow.find_by(user_id: params[:id], follower_id: follower.id).nil? ? false : true) unless follower.nil?
  end
end
