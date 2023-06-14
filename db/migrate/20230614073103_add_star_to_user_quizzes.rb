class AddStarToUserQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :user_quizzes, :star, :integer, default: 0
  end
end
