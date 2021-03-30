class FavoritesController < ApplicationController

    def create
        # @listing = Listing.create(listing_params) -- or sepearate into 2 fetches?
        @favorite = Favorite.create(user_id: params[:user_id], listing_id: params[:listing_id] )
        if @favorite.valid?
            render json: @favorite
        else 
            render json: false
        end 
    end 

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy 

        render json: @favorite
    end 

    private

    def favorite_params
        params.permit(:user_id, :listing_id ) #user_id, listing_id 
    end 


end
