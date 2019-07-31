class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to action: "index"
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id)
  end

end

