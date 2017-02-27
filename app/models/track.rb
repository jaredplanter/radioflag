class Track
  def self.select_by_album_id album_id
    new.select_by_album_id album_id
  end

  def select_by_album_id album_id
    MusixMatch.get_album_tracks(album_id).track_list
  end
end
