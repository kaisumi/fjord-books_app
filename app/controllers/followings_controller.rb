# frozen_string_literal: true

class FollowingsController < ApplicationController
  def index
    @follows = User.find(params[:user_id]).followings.page(params[:page])
  end
end
