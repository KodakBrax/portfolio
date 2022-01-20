class MainController < ApplicationController
    def index 
    end

    def spotify
    end

    def signedin 
        @user = RSpotify::User.new(request.env['omniauth.auth'])
    end
end