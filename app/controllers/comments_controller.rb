class CommentsController < ApplicationController
	# GET /posts/1 
	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end
end
