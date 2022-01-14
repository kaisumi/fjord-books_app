# frozen_string_literal: true

module FollowsHelper
  def follower?(follower_id:, following_id:)
    follower = User.find(follower_id)
    follower.followings.exists?(id: following_id)
  end
end
