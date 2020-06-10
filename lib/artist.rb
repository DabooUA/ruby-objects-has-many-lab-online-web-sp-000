class Artist

  attr_accessor :name

  #@@song_count = 0

  def initialize(name)
    @name = name
    @songs_array = []
  end

  def self.song_count
    #@@song_count
    Song.all.count
  end

  def songs
    Song.all.select{|song| song.artist == self}
    end

  def add_song(song)
    song.artist = self
    #@songs_array << song
    #@@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)

    song.artist = self
    #@songs_array << song
    #@@song_count += 1
  end

end
