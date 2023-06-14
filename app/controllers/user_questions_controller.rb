class UserQuestionsController < ApplicationController
  def index
    @user_questions = UserQuestion.all
  end
  def show
    @user_question = UserQuestion.find(params[:id])
    @user_questions = UserQuestion.all
    @question = @user_question.question
  end

  def check_answer
    @answer = Answer.find(params[:answer])
    @user_question = UserQuestion.find_by(question: @answer.question, user: current_user)
    @user_question.done_flag = @answer.good_answer_flag
    @user_question.try += 1
    current_user.balance += @user_question.question.reward if @user_question.done_flag == true
    # update column star in user_quizzes after question has been answered correctly
    current_user.save
    # si bon , update balance

    @user_question.save
    @next_question = next_question(@user_question.question)
    if @next_question.nil?
      redirect_to process_result_path(@user_question.question.quiz)
    else
      redirect_to user_world_user_quiz_user_question_path(UserWorld.find_by(world: @user_question.question.quiz.world, user: current_user), UserQuiz.find_by(quiz: @user_question.question.quiz, user: current_user), @next_question)
    end
  end

  def next_question(question)
    @new_question = Question.find_by(quiz: question.quiz, number: question.number + 1)

    # si pas de nouvelle question , rediriger vers les results
    @new_user_question = UserQuestion.find_by(question: @new_question, user: current_user)
  end
end
