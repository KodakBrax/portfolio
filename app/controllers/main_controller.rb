class MainController < ApplicationController
    def index 
    end

    def spotify
    end

    def spotify_login
        query_params = {
            response_type: 'code',
            client_id: '4207efe04097425fa179530891c7e70f',
            scope: 'user-read-email playlist-read-private playlist-read-collaborative user-library-read user-library-modify user-read-recently-played user-top-read',
            redirect_uri: 'http://localhost:3000/auth/spotify/callback'
        }

        redirect_to 'https://accounts.spotify.com/authorize?' + query_params.to_query, allow_other_host: true
    end

    def signedin 
        @user = RSpotify::User.new(request.env['omniauth.auth'])
        @country = @user.email
        @tracks = @user.top_artists
    end
end