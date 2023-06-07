class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.integer :number
      t.text :description
      t.integer :reward
      t.references :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
