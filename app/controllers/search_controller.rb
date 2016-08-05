class SearchController < ApplicationController
  require 'will_paginate/array'

  def index
    redirect_to action: "results" if artist_name.present?
  end

  def results
    set_artist_name_cookie
    @results = WillPaginate::Collection.create(current_page, per_page, search_response.available) do |pager|
        pager.replace search_response.artist_list
    end
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

  def current_page
    params[:page] || 1
  end

  def per_page
    10
  end

  def search_response
    MusixMatch.search_artist({q_artist: artist_name, page: current_page, page_size: per_page})
  end
end
