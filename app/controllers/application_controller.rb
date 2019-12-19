class ApplicationController < ActionController::Base
    before_action :require_login



    private

    def not_authenticated
        flash[:warning] = "You must be authenticated to access this page!"
        redirect_to log_in_path
    end
end

