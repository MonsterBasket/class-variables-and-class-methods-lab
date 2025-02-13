class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artists.group_by{|a| a}.transform_values {|values| values.count}
  end

  def self.genre_count
    @@genres.group_by{|a| a}.transform_values {|values| values.count}
  end

  def self.count
    @@count
  end
end