class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        find_post
    end

    def new
        @post = Post.new
    end

    def create
        @post  = Post.new(post_params)
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
        flash.notice = "Article '#{@post.title}' Destroyed!"
        redirect_to articles_path
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
        params.require(:post).permit(:title, :body)
    end

end