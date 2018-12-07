class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_email(params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to "/"
        else 
            flash[:alert] = "Email or password invalid, please try again."
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/', notice: "Logout successful"
    end

end