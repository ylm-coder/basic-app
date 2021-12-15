class MainController < ApplicationController
    def index
        if session[:user_id]
            @user= User.find(session[:user_id])
        flash[:notice] =" Oturum kapandı"
        flash[:alert] = "Geçersiz işlem"
        end
    end
end