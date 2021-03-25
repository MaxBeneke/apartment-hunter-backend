class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :notes
  has_one :user
  has_one :listing
end
