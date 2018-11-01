class Favorite < ApplicationRecord
  belongs_to :whiskey
  belongs_to :user
  validates_uniqueness_of :user_id, :scope => whiskey_id
end