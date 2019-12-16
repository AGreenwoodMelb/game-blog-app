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
        @post = Post.new(post_params)
        if @post.save
            flash.notice = "Post '#{@post.title}' created!"
            redirect_to post_path(@post)
        else
            flash.notice = "Post '#{@post.title}' creation Failed!"
            render new
        end
    end

    def destroy
        find_post
        @post.destroy
        flash.notice = "Post '#{@post.title}' destroyed!"
        redirect_to posts_path
    end

    def edit
        find_post
    end

    def update
        find_post
        if @post.update(post_params)
            flash.notice = "Post '#{@post.title}' updated!"
            redirect_to post_path(@post)
        else
            flash.notice = "Post '#{@post.title}' update Failed!"
            render edit
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end

    def find_post
        @post = Post.find(params[:id])
    end

end