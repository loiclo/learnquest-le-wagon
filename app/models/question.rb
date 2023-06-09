class Question < ApplicationRecord
  belongs_to :quiz
  has_many :user_questions
  has_many :users, through: :user_questions
  has_many :answers
end
