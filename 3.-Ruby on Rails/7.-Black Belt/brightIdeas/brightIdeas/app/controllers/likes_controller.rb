class LikesController < ApplicationController
  def create
      like = Like.new( like_params )
      if like.valid?
          like.save
      end
      redirect_to :back
  end

  def destroy
      like = Like.where( like_params ).first
      if like
          like.destroy
      end
      redirect_to :back
  end

  private
  def like_params
      params.require(:like).permit(:bright_idea_id, :user_id)
  end
end
