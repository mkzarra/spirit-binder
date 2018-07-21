class Whiskey < ApplicationRecord
  has_many :users_to_whiskeys
  has_many :users, through: :users_to_whiskeys
end
