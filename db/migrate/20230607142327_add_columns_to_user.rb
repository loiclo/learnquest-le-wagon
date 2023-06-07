class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :balance, :integer
    add_column :users, :role, :string
    add_column :users, :name, :string
  end
end
