class Pokemon

    @@all = []

    attr_accessor :name, :type, :hp

    def initialize(p_hash)
        @name = p_hash["name"]
        @type = p_hash["type"]
        @hp = p_hash["hp"]
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    #write method that finds pokemon by index

    def self.find_pokemon(pokemon_name)
        self.all.find{|pokemon| pokemon.name == pokemon_name}
    end




end
