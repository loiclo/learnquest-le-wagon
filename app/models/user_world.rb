class UserWorld < ApplicationRecord
  belongs_to :user
  belongs_to :world
  has_many :user_quizzes
end
