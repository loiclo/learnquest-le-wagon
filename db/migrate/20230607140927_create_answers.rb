class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :good_answer_flag
      t.integer :number
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
