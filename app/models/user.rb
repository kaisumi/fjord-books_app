# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :follows_as_following, class_name: 'Follow', inverse_of: :follower, foreign_key: 'follower_id', dependent: :destroy
  has_many :follows_as_follower, class_name: 'Follow', inverse_of: :following, foreign_key: 'following_id', dependent: :destroy
  has_many :followings, class_name: 'User', through: :follows_as_following
  has_many :followers, class_name: 'User', through: :follows_as_follower
end
