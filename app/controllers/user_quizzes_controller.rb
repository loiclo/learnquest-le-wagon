class UserQuizzesController < ApplicationController
  def index
    @quizzes = UserQuiz.all
  end
  def show
    @quiz = UserQuiz.find(params[:id])
  end
end
