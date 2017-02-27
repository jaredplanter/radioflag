class ArtistsController < ApplicationController
  def show
    @albums = Album.select_by_artist_id params[:id]
  end
end
