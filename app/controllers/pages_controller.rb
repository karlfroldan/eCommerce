class PagesController < ApplicationController
    def show_login
    end

    def create_login
        # Check if the email is in the database
        user = User.find_by_email(params[:email])
        # Check if the password is correct
        if user && user.authenticate(params[:password]) then
            session[:user_id] = user.id 

            redirect_to '/users/' + user.id.to_s, notice: 'Login Successful!'
        else 
            redirect_to '/', notice: 'Login Failed!'
        end
    end

    def logout
        session[:user_id] = nil

        redirect_to '/', notice: 'Successfuly logged out!'
    end
end
