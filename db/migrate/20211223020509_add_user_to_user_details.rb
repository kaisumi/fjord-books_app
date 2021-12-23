# frozen_string_literal: true

class AddUserToUserDetails < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_details, :user, foreign_key: true
  end
end
