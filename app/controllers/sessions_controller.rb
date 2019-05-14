class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create 
        @user = User.find(params[:user_id])

        if @user
            redirect_to user_path(@user)
        end
    end

end