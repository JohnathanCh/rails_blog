class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def create 
        if params[:password] == params[:password_confirmation]
            @user = User.new(user_params)

            if @user.save 
                redirect_to user_path(@user)
            else
                redirect_to signup_path
            end
        end
 
    end

    def show 
        @user = User.find(1)
    end


    private 

    def user_params
        params.require(:user).permit(:name, :age, :email, :password)
    end
end
