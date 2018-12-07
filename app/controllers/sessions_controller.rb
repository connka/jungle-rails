class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_email(params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path
        else 
            flash.now.alert = "Email or password invalid, please try again."
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to rooth_path, notice: "Logout successful"
    end

end