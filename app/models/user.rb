# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :users_to_whiskeys
  has_many :whiskeys, through: :users_to_whiskeys
end
