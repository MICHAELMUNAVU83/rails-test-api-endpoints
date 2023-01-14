class PostsController < ApplicationController
    def index
        @posts = Post.all
        render json: @posts
    end

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            render json: @post
        else
            render json: {error: 'Error creating post'}
        end
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            render json: @post
        else
            render json: {error: 'Error updating post'}
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            render status: :ok
        else
            render json: {error: 'Error deleting post'}
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
    
end
