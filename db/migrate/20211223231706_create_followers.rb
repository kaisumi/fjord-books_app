# frozen_string_literal: true

class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
