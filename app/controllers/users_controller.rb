class UsersController < ApplicationController

    def signup 
        @user = User.create(name: params[:name], password: params[:password])
        # byebug
        if @user.valid?
            render json: @user
        else 
            render json: false
        end 
    end 

    def login 
        # byebug
        @user = User.find_by(name: params[:name])
        if @user.authenticate(params[:password])
                render json: @user
        else
                render json: false
        end  
    end 

    def show
        # puts params
        @user = User.find(params[:id])

        if @user 
            render json: @user
        else
            render json: false
        end 
    end

    def update
        @user = User.find(params[:id])
        @user.update( name: params[:name], password: params[:password])
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
