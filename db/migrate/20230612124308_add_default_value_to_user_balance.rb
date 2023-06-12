class AddDefaultValueToUserBalance < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :balance, :integer, default: 0
  end
end
