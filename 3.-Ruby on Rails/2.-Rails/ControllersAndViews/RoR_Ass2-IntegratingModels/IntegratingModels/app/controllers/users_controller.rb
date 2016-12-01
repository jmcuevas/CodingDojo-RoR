class UsersController < ApplicationController
    def display_users
        render json: User.all
    end

    def new
    end

    def create
        User.create(name:"devarshi")
        display_users()
    end

    def show_user
        render json: User.find(params[:id])
    end

    def edit_user
    end

    def total_users
        render text: User.all.count
    end
end
