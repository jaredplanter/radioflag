class SearchController < ApplicationController
  def index
    redirect_to action: "results" if artist_name.present?
  end

  def results
    set_artist_name_cookie
    @results = MusixMatch.search_artist({q_artist: artist_name}).artist_list
  end

  private

  def artist_name
    params[:artist_name] || cookies[:artist_name]
  end

  def set_artist_name_cookie
    if params.has_key? :artist_name
      cookies[:artist_name] = params[:artist_name]
    end
  end
end
