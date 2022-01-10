# frozen_string_literal: true

class Follow < ApplicationRecord
  belongs_to :following, class_name: 'User', inverse_of: :follows_as_follower
  belongs_to :follower, class_name: 'User', inverse_of: :follows_as_following
end
