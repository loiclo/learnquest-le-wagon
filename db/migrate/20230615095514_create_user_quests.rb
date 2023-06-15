class CreateUserQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_quests do |t|
      t.boolean :done_flag
      t.references :user, null: false, foreign_key: true
      t.references :quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
