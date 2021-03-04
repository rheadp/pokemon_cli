class Pokemon

    @@all = []

    attr_accessor :name, :type, :hp

    def initialize(name, hp, type)
        @name = name
        @hp = hp
        @type = type
        @@all << self
    end

    def self.all
        @@all
    end
end
