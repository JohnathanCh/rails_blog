class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def create 
        @user = User.new()
    end


    private 

    def user_params
        params.require(:user).permit(:name, :age, :email, :password)
    end
end
