class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @sub = Sub.find(params[:sub_id])
    @post = Post.new
  end

  def create
    @sub = Sub.find(params[:sub_id])
    @post = @sub.posts.new(post_params)

    if @post.save
      redirect_to @sub
    else
      render :new, status: :unprocessable_entity
    end
  end

  private 

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
