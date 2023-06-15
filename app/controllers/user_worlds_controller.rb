class UserWorldsController < ApplicationController
  def index
    @user_worlds = UserWorld.all
    @user_avatar = current_user.user_avatars.last
    @user_avatars = current_user.user_avatars.all
    @equiped_avatar = @user_avatars.where(equiped: true).first
  end

  def show
    @user_world = UserWorld.find(params[:id])
    @user_quizzes = @user_world.user_quizzes
  end
end
