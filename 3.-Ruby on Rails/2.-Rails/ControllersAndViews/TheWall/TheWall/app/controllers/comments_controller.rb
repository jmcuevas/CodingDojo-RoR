class CommentsController < ApplicationController
  def create
      comment = Comment.new(comment: params[:comment], user: current_user, message: Message.find(params[:message_id]))
      if comment.valid?
          comment.save
      else
          flash[:comment_errors] = comment.errors.full_messages
      end
      redirect_to '/wall'
  end
end
