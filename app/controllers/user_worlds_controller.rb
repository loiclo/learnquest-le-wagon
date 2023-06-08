class UserWorldsController < ApplicationController
  def index
    @worlds = UserWorld.all
  end

  def show
    @world = UserWorld.find(params[:id])
  end
end
