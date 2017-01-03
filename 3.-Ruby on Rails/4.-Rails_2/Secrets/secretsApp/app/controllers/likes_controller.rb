class LikesController < ApplicationController
    def like
        Like.create(user_id: current_user.id, secret_id: params[:secret_id])
        redirect_to :back
    end

    def unlike
        like = Like.where(user_id: current_user.id, secret_id: params[:secret_id]).first
        like.destroy
        redirect_to :back
    end

end
