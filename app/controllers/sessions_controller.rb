require 'pry'
class SessionsController < ApplicationController

    def new
        @user = User.new

        render :signup
    end

    def create 
        binding.pry
        @user = User.find_by(email: params[:email])
        if @user
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @user = User.new(name: params[:name], age: params[:age], email: params[:email], password: params[:password])

            session[:user_id] = @user.id

            redirect_to user_path(@user)
        end
    end

end