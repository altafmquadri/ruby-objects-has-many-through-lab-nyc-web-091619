require 'pry'

class Artist
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        #iterate through songs comparing to self
        Song.all.select {|song|song.artist == self}
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def genres
        Genre.all.select {|genre| genre}
    end

    def self.all
        @@all
    end


end #end of Artist class