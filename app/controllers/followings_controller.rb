# frozen_string_literal: true

class FollowingsController < ApplicationController
  def index
    @follows = User.find(params[:user_id]).followings
    @follows = Kaminari.paginate_array(@follows).page(params[:page])
  end
end
