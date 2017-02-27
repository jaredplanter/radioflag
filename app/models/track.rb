class Track < Struct.new(:track)
  def self.select_by_album_id album_id
    MusixMatch.get_album_tracks(album_id).track_list.map do |track|
      new track
    end
  end

  def name
    track.track_name
  end

  def album_name
    track.album_name
  end

  def length
    track.track_length
  end

  def cover_art
    track.album_coverart_100x100
  end
end
