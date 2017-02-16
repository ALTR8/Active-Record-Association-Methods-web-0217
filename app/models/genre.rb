require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    all_artist = self.artists
    all_artist.map {|artist| artist.name}
    #binding.pry
  end
    # return an array of strings containing every musician's name
end
