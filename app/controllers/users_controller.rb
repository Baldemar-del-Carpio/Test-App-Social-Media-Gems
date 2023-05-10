class UsersController < ApplicationController
  def spotify
    <%= spotify_user = RSpotify::User.new(request.env['omniauth.auth']) %>

    <%= spotify_user.country %>
    <%= spotify_user.email %>

    <%= playlist = spotify_user.create_playlist!('my-awesome-playlist') %>

    <%= tracks = RSpotify::Track.search('Know') %>
    <%= playlist.add_tracks!(tracks) %>
    <%= playlist.tracks.first.name %>

    <%= spotify_user.save_tracks!(tracks) %>
    <%= spotify_user.saved_tracks.size %>
    <%= spotify_user.remove_tracks!(tracks) %>

    <%= albums = RSpotify::Album.search('launeddas') %>
    <%= spotify_user.save_albums!(albums) %>
    <%= spotify_user.saved_albums.size %>
    <%= potify_user.remove_albums!(albums) %>

    <%= spotify_user.follow(playlist) %>
    <%= spotify_user.follows?(artists) %>
    <%= spotify_user.unfollow(users) %>

    <%= spotify_user.top_artists %>
    <%= spotify_user.top_tracks(time_range: 'short_term') %>

  end
end