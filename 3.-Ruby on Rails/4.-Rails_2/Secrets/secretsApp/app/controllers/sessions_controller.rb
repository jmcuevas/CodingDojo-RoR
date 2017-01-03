class SessionsController < ApplicationController
    def new

    end

    def logout
        reset_session
        redirect_to '/'
    end
end
