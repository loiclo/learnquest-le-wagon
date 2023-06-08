class UserWorldsController < ApplicationController
  def index
    @user_worlds = UserWorld.all
  end

  def show
    @user_worlds = UserWorld.all
    @user_world = UserWorld.find(params[:id])
  end
end
