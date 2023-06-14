class UserWorldsController < ApplicationController
  def index
    @user_worlds = UserWorld.all
    @user_avatar = current_user.user_avatars.last
  end

  def show
    @user_worlds = UserWorld.all
    @user_world = UserWorld.find(params[:id])
  end
end
