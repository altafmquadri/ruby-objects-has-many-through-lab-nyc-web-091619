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
        Artist.all.select {|artist|artist; binding.pry}
    end

    def self.all
        @@all
    end

end #end of genre class