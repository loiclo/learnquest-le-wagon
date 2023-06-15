class ShopController < ApplicationController
  def index
    @user_avatars = current_user.user_avatars
    @avatars = Avatar.all
    @balance = current_user.balance

  end
end
