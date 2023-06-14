class AddPurshasedToUserAvatars < ActiveRecord::Migration[7.0]
  def change
    add_column :user_avatars, :purchased, :boolean, default: false
  end
end
