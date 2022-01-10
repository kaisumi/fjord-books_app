# frozen_string_literal: true

class FollowsController < ApplicationController
  def show
    @follows = User.find(params[:id]).followings
    @follows = Kaminari.paginate_array(@follows).page(params[:page])
  end
end
