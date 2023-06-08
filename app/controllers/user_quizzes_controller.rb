class UserQuizzesController < ApplicationController
  def index
    @quizzes = UserQuiz.all
  end
end
