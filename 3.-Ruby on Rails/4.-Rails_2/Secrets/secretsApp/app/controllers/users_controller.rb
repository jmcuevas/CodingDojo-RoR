class UsersController < ApplicationController
    before_action :require_login, except:[:new, :create, :login]
    before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

    def login
        # Check if the email exists
        u = User.find_by_email(params[:email])

        # If it exists, check the password
        if u
            # If the password is correct log in (start session)
            if u.authenticate(params[:password])
                session[:user_id] = u.id
                redirect_to "/users/#{u.id}"
            # If the password is incorrect redirect to root
            else
                flash[:login_errors] = "Your username or password is invalid"
                redirect_to '/'
            end
        # If it does not exists redirect to root and flash error
        else
            flash[:login_errors] = "Your username or password is invalid"
            redirect_to '/'
        end
    end

    def show
        @user = User.find(params[:id])
        @secrets = @user.secrets
        @secrets_liked = @user.secrets_liked
    end

    def new
    end

    def create
        u = User.new( user_params)
        if u.valid?
            u.save
            session[:user_id] = u.id
            redirect_to "/users/#{u.id}"
        else
            flash[:reg_errors] = u.errors.full_messages
            redirect_to '/'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.name = params[:user][:name]
        user.email = params[:user][:email]
        if user.valid?
            user.save
        end
        redirect_to "/users/#{@user.id}"
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        reset_session
        redirect_to '/'
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
