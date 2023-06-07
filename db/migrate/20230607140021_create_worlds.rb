class CreateWorlds < ActiveRecord::Migration[7.0]
  def change
    create_table :worlds do |t|
      t.string :title
      t.text :description
      t.integer :reward

      t.timestamps
    end
  end
end
