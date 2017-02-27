class Album < Struct.new(:album)
  def self.select_by_artist_id artist_id
    MusixMatch.get_artist_albums(artist_id).album_list.map do |album|
      new album
    end
  end

  def id
    album.album_id
  end

  def cover_art
    album.album_coverart_100x100
  end
end
