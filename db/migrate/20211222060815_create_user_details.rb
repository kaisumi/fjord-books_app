# frozen_string_literal: true

class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.string :user_name
      t.string :postal_code
      t.text :address
      t.text :self_introduction

      t.timestamps
    end
  end
end
