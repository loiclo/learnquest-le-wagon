class UserAvatarsController < ApplicationController
  def create
    @avatar = Avatar.find(params[:avatar_id].to_i )
    if current_user.balance < @avatar.price
      render json: { 'status': "pas d'argent"}
    else
      current_user.balance -= @avatar.price
      current_user.save
      @user_avatar = UserAvatar.new(user: current_user, avatar: @avatar )

      if @user_avatar.save
        respond_to do |format|
          format.json # Follow the classic Rails flow and look for a create.json view# Follow the classic Rails flow and look for a create.json view
        end
      else
        render json: { 'status': 'allready '}
      end
    end
  end
end
