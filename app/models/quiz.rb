class Quiz < ApplicationRecord
  belongs_to :world
  has_many :questions
  has_many :user_quizzes
  has_many :users, through: :user_quizzes
end
