require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "42b8be05bdd340ebafcf51c008ec44f2", "c1283fa13e9d4d6aa6ddc90012bffe95", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end

OmniAuth.config.allowed_request_methods = [:post, :get]