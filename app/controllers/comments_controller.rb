class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' } # changed the redirect to @post
      end
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:user, :body)
  end

end
