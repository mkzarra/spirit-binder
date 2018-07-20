class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :region, :age, :price, :classification, :description
end
