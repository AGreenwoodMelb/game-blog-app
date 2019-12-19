class ApplicationController < ActionController::Base
    before_action :require_login


    private

    def not_authenticated
        flash[:warning] = "You must be authenticated to access this page!"
        redirect_to log_in_path
    end


    def check_admin
        unless current_user[:admin_user]
            redirect_to root_path
        end
    end
end
