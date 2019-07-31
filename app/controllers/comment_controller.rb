class CommentController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @comment = @item.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to item_path(@item) }
        format.json
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to item_path(@item)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id)
  end

end

