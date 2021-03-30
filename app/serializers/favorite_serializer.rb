class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :notes, :listing_id, :prop_id, :photo 
  belongs_to :listing 
end
