class SessionsController < ApplicationController
    def destroy
        session[:user_id] = @user_id
        redirect_to root_path, notice:"Log Out"
    end
end