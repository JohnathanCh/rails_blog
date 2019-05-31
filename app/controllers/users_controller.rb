require 'pry'

class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def create 

        if user_params[:password] == user_params[:password_confirmation]
            @user = User.new(user_params)

            if @user.save 
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                flash.now[:danger] = 'Invalid credentials'
                redirect_to signup_path
            end
        end
 
    end

    def show 
        @user = User.find(session[:user_id])
    end


    private 

    def user_params
        params.require(:user).permit(:name, :age, :email, :password, :password_confirmation)
    end
end
