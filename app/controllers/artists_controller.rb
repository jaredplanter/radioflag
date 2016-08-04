class ArtistsController < ApplicationController
  def albums
    @albums = MusixMatch.get_artist_albums(params[:id]).album_list
  end
end
