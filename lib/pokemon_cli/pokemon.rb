class Pokemon

    @@all = []

    attr_accessor :name, :type

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
    


end
