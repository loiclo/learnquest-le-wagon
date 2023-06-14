class CreateAvatars < ActiveRecord::Migration[7.0]
  def change
    create_table :avatars do |t|
      t.integer :price
      t.string :img_url
      t.string :name

      t.timestamps
    end
  end
end
