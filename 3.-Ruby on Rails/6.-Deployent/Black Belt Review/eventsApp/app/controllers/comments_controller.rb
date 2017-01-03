class CommentsController < ApplicationController
  def create
      comment = Comment.new( comments_params )
      if comment.valid?
          comment.save
      end
      redirect_to :back
  end

  private
  def comments_params
      params.require(:comment).permit(:user_id, :event_id, :content)
  end
end
