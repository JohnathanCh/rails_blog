class UsersController < ApplicationController

    def create 
        @user = User.new(name: params[:name])

        if @user.save 
            redirect_to login_path
        end
    end

end