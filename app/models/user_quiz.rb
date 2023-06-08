class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :user_questions
end
