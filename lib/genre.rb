require 'pry'

class Genre
    attr_accessor :name
    
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self    
    end

    def songs
        Song.all.select {|song|song}
    end

    def artists
        songs.map {|song| song.artist}
    end

    def self.all
        @@all
    end

end #end of genre class