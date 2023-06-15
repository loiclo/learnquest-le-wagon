class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      if current_user.user_avatars.empty?
        UserAvatar.create!(user: current_user, avatar: Avatar.find_by_name("chat"))
      end
    end
  end
end
