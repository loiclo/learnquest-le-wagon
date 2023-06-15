class UserAvatar < ApplicationRecord
  belongs_to :avatar
  belongs_to :user
  validates :avatar, uniqueness: { scope: :user }
end
