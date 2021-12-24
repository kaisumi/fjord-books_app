# frozen_string_literal: true

class CreateFollows < ActiveRecord::Migration[6.1]
  def change
    create_table :follows do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :follower, foreign_key: true

      t.timestamps
    end
  end
end
