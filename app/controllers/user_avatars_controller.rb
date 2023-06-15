class UserAvatarsController < ApplicationController
  def create
    @user_avatar = UserAvatar.new(user: current_user, avatar_id: params[:avatar_id].to_i )
    @user_avatar.save
    respond_to do |format|
        format.json # Follow the classic Rails flow and look for a create.json view# Follow the classic Rails flow and look for a create.json view
    end
  end


end
