class ArtistsController < ApplicationController
  def albums
    @results = MusixMatch.get_artist_albums(params[:id]).album_list
  end
end
