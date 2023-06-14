class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :questions, through: :quiz
  has_many :user_questions, ->(user_quiz) { where(user: user_quiz.user) }, through: :questions, source: :user_questions
end
