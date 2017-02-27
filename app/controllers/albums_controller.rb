class AlbumsController < ApplicationController
  def show
    @tracks ||= Track.select_by_album_id params[:id]
    render layout: false
  end
end
