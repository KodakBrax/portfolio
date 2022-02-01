require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, '4207efe04097425fa179530891c7e70f','85f448726c034fc1bd3e697b86ee9b8e', scope: 'user-read-email playlist-modify-public user-library-read user-library-modify user-top-read user-read-recently-played', provider_ignores_state: true
end