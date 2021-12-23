# frozen_string_literal: true

class RemoveUserIdFromUserDetails < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_details, :user_id, :integer
  end
end
