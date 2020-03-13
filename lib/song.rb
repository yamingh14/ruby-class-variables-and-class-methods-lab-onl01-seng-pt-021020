# require 'pry'

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
    # binding.pry
  end

  def self.count
    @@count
  end

  def self.artists # is a class method that returns a unique array of artists of existing songs
    @@artists.uniq{|artist| artist.strip}
    # ary.uniq{|x| x.user_id}
  end

  def self.genres # is a class method that returns a unique array of genres of existing songs
    @@genres.uniq{|genre| genre.strip}
  end

  def self.genre_count
    genre_hash = {}
    @@genres.map do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
         genre_hash[genre] = 1
       end
     end
      genre_hash
  end

  def self.artist_count
      artist_hash = {}
      @@artists.map do |artist|
        if artist_hash[artist]
          artist_hash[artist] += 1
        else
           artist_hash[artist] = 1
         end
      end
      artist_hash
    end
end
