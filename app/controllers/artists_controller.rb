class ArtistsController < ApplicationController
  def show
    @albums = MusixMatch.get_artist_albums(params[:id]).album_list
  end
end
