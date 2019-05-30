require 'pry'
class SessionsController < ApplicationController
    include SessionsHelper

    def new
        @user = User.new

        render :login
    end

    def create 
        @user = User.find_by(email: params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])

            # login(@user) comes from the sessions_helper.rb
            # session[:user_id] = @user.id
            
            log_in(@user)
            redirect_to user_path(@user)
        else
            flash.now[:danger] = 'Invalid email/password combination'
            render :new
        end
    end

    def destroy 
        session.clear
    end

end