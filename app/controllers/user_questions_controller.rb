class UserQuestionsController < ApplicationController
  def index
    @user_questions = UserQuestion.all
  end
  def show
    @user_question = UserQuestion.find(params[:id])
  end
end
