class UserQuizzesController < ApplicationController
  def index
    @user_quizzes = UserQuiz.all
  end
  def show
    @user_quiz = UserQuiz.find(params[:id])
  end
end
