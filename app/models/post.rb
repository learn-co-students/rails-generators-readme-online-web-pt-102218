class Post < ActiveRecord::Base

    def index
    end

    def new
    end

    def create
    end

    def show
        @post = Post.find(params[:id])
    end


    def update
        @post = Post.find(params[:id])
        @post.update(params.require(:post).permit(:title, :description, :post_status))
        redirect_to post_path(@post)
    end


end
