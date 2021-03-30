class AddPhotosAndListingIdToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :photo, :string
    add_column :favorites, :prop_id, :bigint 
  end
end
