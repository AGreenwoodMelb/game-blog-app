class UsersController < ApplicationController
skip_before_action :require_login, only: [:new, :create]

    def new
        @user = User.new
    end


    def create
        @user = User.new(user_params)

        if @user.save
            login(params[:user][:email],params[:user][:password],params[:user][:remember_me])
            flash[:success] = "Welcome, #{@user.username}!"
            # fail
            redirect_to root_path
        else
            
            flash[:warning] = 'faileds'
            
            render new
        end
    end

    private

    def user_params
        # fail
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
