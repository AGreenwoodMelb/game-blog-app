class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.post_id = params[:post_id]
        @comment.author_name = current_user.username

        if @comment.save
            flash.notice = 'New comment added'
            redirect_to post_path(@comment.post)
        else
            flash.notice = 'Error adding nw comment'
            redirect_to post_path(@comment.post)
        end
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end
