class MessagesController < ApplicationController
  def create
      message = Message.new(message: params[:message], user: current_user))
      if message.valid?
          message.save
      else
          flash[:message_errors] = message.errors.full_messages
      end
      redirect_to '/wall'
  end
end
