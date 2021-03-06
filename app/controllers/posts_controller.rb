class PostsController < ApplicationController
    skip_before_action :require_login, only: [:index, :show]
    before_action :check_admin, only: [:edit, :new]
    
    def index
        @posts = Post.all
    end

    def show
        find_post

        @comment = Comment.new
        @comment.post_id = @post.id
    end

    def new
        @post = Post.new
    end

    def create
        @post  = Post.new(post_params)
        @post.user_id = current_user[:id]
        if  @post.save
            flash.notice = "Post '#{@post.title}' Created!"
            redirect_to post_path(@post)
        else
            flash.notice = "Post '#{@post.title}' Failed to Create!"
            render new
        end
    end

    def destroy
        find_post
        @post.destroy
        flash.notice = "Post '#{@post.title}' Destroyed!"
        redirect_to posts_path
    end

    def edit
        find_post
    end

    def update
        find_post
        if @post.update(post_params)
            flash.notice = "Post '#{@post.title}' Updated!"
            redirect_to post_path(@post)
        else
            flash.notice = "Post '#{@post.title}' Failed to Update!"
            render new
        end
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :body, :tag_list, uploads:[])
    end


end