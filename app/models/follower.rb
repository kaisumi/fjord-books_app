# frozen_string_literal: true

class Follower < ApplicationRecord
  belongs_to :user
  has_many :follows, dependent: :delete_all
end
