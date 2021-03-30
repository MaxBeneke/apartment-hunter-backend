class ListingsController < ApplicationController

    def create
        @listing = Listing.create(listing_params)
        if @listing.valid?
            # byebug
            # puts params[:user_id]
            @favorite = Favorite.create(user_id: params[:user_id], listing_id: @listing.id, photo: params[:photo], prop_id: params[:prop_id])
            # byebug
            render json: @listing
        else 
            render json: false
        end 
    end 

    private

    def listing_params
        params.permit(:address, :price, :square_feet, :beds, :baths)
    end 
end
