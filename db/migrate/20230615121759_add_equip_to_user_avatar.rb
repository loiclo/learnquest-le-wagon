class AddEquipToUserAvatar < ActiveRecord::Migration[7.0]
  def change
    add_column :user_avatars, :equiped, :boolean, default: false
  end
end
