class UserWorld < ApplicationRecord
  belongs_to :user
  belongs_to :world
  has_many :quizzes, through: :world
  has_many :user_quizzes, ->(user_world) { where(user: user_world.user) }, through: :quizzes, source: :user_quizzes
end
