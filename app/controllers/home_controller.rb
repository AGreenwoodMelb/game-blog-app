class HomeController < ApplicationController
    skip_before_action :require_login
    def home
    end

    def about
    end
end
