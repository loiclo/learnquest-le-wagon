class UserAvatarsController < ApplicationController
  def create
    @avatar = Avatar.find(params[:avatar_id].to_i )
    if current_user.balance < @avatar.price
      render json: { 'status': true }
    else
      current_user.balance -= @avatar.price
      current_user.save
      @user_avatar = UserAvatar.new(user: current_user, avatar: @avatar )

      if @user_avatar.save
        respond_to do |format|
          format.json # Follow the classic Rails flow and look for a create.json view# Follow the classic Rails flow and look for a create.json view
        end
      else
        render json: { 'status': true}
      end
    end
  end

  def change_avatar
    @user_avatars = current_user.user_avatars.all
    @equiped_avatar = @user_avatars.where(equiped: true).first
    @equiped_avatar.update(equiped: false) if @equiped_avatar

    @user_avatar = UserAvatar.find(params[:id])
    @user_avatar.update(equiped: true)
    redirect_to shop_index_path
  end
end
