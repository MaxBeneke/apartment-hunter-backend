class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :notes, :listing_id 
  belongs_to :listing 
end
