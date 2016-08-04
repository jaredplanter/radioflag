class AlbumsController < ApplicationController
  def tracks
    @tracks ||= MusixMatch.get_album_tracks(params[:id]).track_list
    @album_name = @tracks.first.album_name
    render layout: false
  end
end
