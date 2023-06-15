class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :questions, through: :quiz
  has_many :user_questions, ->(user_quiz) { where(user: user_quiz.user) }, through: :questions, source: :user_questions

  after_update :validate_quest

  def validate_quest
    user_quest = self.quiz.world.quests.last.user_quests.find_by(user: user)
    if user_quest && !user_quest.done_flag && done_flag
      user_quest.done_flag = true
      user_quest.save
    end
  end
end
