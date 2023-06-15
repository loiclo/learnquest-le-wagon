class UserWorldsController < ApplicationController
  def index
    @user_worlds = UserWorld.all
    @user_avatar = current_user.user_avatars.last
    @user_quests = current_user.user_quests.all
  end

  def show
    @user_worlds = UserWorld.all
    @user_world = UserWorld.find(params[:id])
  end
end
