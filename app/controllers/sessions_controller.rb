class SessionsController <  ApplicationController
    skip_before_action :require_login, except: [:destroy]

    def new

    end

    def create
        if login(params[:email], params[:password],params[:remember_me])
            flash[:success] = 'Welcome back!'
            redirect_to root_path
        else
            flash.now[:warning] = 'Email and/or password is incorrect.'
            render 'new'
        end
    end

    def destroy
        logout
        flash[:success] = 'Goodbye!'
        redirect_to log_in_path
    end

end
