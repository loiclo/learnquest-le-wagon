class World < ApplicationRecord
  has_many :quizzes
  has_many :user_worlds
  has_many :users, through: :user_worlds
  has_many :quests
end
