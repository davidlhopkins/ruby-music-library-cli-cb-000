class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.create(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def add_song(song)
    song.artist = self if song.artist == nil
    self.songs << song unless self.songs.include?(song)
  end

  def save
    @@all << self
  end

  def genres
    self.song.genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

end
