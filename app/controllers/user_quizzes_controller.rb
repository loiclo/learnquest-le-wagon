class UserQuizzesController < ApplicationController

  def index
    @user_quizzes = UserQuiz.all
  end

  def show
    @user_quiz = UserQuiz.find(params[:id])
    @quiz = @user_quiz.quiz
  end

  def process_result
    @quiz = Quiz.find(params[:quiz_id])
    @user_quiz = UserQuiz.find_by(user: current_user, quiz: @quiz)
    @user_questions = UserQuestion.where(user: current_user, question: @quiz.questions)
  end
end
