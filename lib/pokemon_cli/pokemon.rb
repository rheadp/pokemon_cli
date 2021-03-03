class Pokemon

    @@all = []

    attr_accessor :name, :type, :hp

    def initialize(name, type, hp)
        @name = name 
        @type = type
        @hp = hp
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    #write a method to index all pokemon in alphabetical order 1 - 100 



end
