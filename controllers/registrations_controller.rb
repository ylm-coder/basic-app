class RegistrationsController < ApplicationController
    def new 
        @user = User.new
    end
    
    def create
        flash[:notice] = "teşekür ederim sayfa ziyareti için"
      
        @user = User.new(user_params)
        if @user.save
            session[:user_id]=@user.id
        else
            render :new

        end
    end
    def user_params
        params.require(:user).permit(:email, :password_confirmation)
    end
    
end