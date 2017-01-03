class SecretsController < ApplicationController
    before_action :require_login, only: [:show, :create, :destroy]

    def show
        @secrets = Secret.all
    end


    def create
        new_secret = Secret.new (secret_params)
        if new_secret.valid?
            new_secret.save
            redirect_to :back
        else
            flash[:secret_create_errors] = new_secret.errors.full_messages
            redirect_to ''
        end
    end

    def destroy
        secret = Secret.find(params[:secret_id])
        secret.destroy if secret.user == current_user
        redirect_to "/users/#{current_user.id}"
    end

    private
    def secret_params
        params.require(:secret).permit(:content, :user_id)
    end

end
