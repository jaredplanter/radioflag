class SearchController < ApplicationController
  def index
  end

  def results
    cookies[:artist_name] = params[:artist_name]
    @results = MusixMatch.search_artist({q_artist: params[:artist_name]}).artist_list
  end
end
