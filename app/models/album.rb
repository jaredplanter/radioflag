class Album
  def self.select_by_artist_id artist_id
    new.select_by_artist_id artist_id
  end

  def select_by_artist_id artist_id
    MusixMatch.get_artist_albums(artist_id).album_list
  end
end
