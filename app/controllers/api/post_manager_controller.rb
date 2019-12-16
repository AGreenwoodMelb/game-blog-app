module Api
    class PostManagerController < ApplicationController

        def index
            render json: Post.all
        end
        

    end
end
