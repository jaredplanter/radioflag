class AlbumsController < ApplicationController
  def show
    @tracks ||= MusixMatch.get_album_tracks(params[:id]).track_list
    render layout: false
  end
end
