class UsersController < ApplicationController

    def signup 
        @user = User.create(user_params)
        
        if @user.valid?
            render json: @user
        else 
            render json: false
        end 
    end 

    def login 
        @user = User.find_by(user_params)

        if @user 
                render json: @user
        else
                render json: false
        end  
    end 

    private 

    def user_params
        params.permit(:name, :password)
    end 

end
