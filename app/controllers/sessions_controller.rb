class SessionsController <  ApplicationController
    skip_before_action :require_login, except: [:destroy]

    def new

    end

    def create
        if login(params[:email], params[:password])
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
        redirect_to login_path
    end

end
