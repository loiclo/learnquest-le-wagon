class Quest < ApplicationRecord
  belongs_to :world
  has_many :user_quests
end
