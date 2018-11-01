class FavoriteSerializer < ActiveRecord::Serializer
  attributes :id, user_id, whiskey_id
end