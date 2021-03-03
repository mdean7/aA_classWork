class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to blog_url(@comment.blog_id)
      else
        redirect_to blog_url(@comment.blog_id)
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to blog_url(@comment.blog_id)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:blog_id, :body, :author_id)
  end
end
