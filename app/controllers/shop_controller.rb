class ShopController < ApplicationController
  def index
    @user_avatar = current_user.user_avatars.last
    @avatars = Avatar.all
    @balance = current_user.balance
  end
end
