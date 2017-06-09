class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, song_hash|
       if song_hash.include?(genre)
         song_hash[genre] = song_hash[genre] + 1
         puts ""
       else
         song_hash[genre] = 1
       end
     end
  end
  def self.artist_count
    @@artists.each_with_object({}) do |artist, song_hash|
       if song_hash.include?(artist)
         song_hash[artist] = song_hash[artist] + 1
         puts ""
       else
         song_hash[artist] = 1
       end
     end
  end


end
