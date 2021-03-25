class ListingSerializer < ActiveModel::Serializer
  attributes :id, :price, :address, :square_feet, :beds, :baths
end
