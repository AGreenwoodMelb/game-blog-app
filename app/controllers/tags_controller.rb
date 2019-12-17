class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end

    def show
        find_tag
    end

    def edit
        find_tag
    end

    def update
        find_tag
        @tag.update(tag_params)
    end


    def destroy
        find_tag
        @tag.destroy
        redirect_to tags_path
    end

    private

    def find_tag
        @tag = Tag.find(params[:id])
    end

    def tag_params
        params.require(:tag).permit(:name)
    end
end
