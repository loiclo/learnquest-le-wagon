class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :title
      t.integer :reward
      t.references :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
