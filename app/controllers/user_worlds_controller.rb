class UserWorldsController < ApplicationController
  def index
    @worlds = UserWorld.all
  end
end
