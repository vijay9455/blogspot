class CommentsController < ApplicationController
  # GET /posts/1 
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    respond_to do |format|
      format.html { redirect_to posts_path }
      format.json { render json: @posts }
    end
  end

  def destroy
    @post = Post.find(params[ :post_id])
    @comment = @post.comments.find(params[ :id])
    @comment.destroy
    redirect_to posts_path
  end
end
