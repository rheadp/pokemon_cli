class API
    def self.get_pokemon
        url = "https://pokeapi.co/api/v2/pokemon/"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        pokemons_hash = JSON.parse(response.body)
        pokemons_array = pokemons_hash["results"]
        pokemons_array.each do |p_hash|
            url = p_hash['url']
            uri_2 = URI.parse(url)
            response_2 = Net::HTTP.get_response(uri_2)
            pokemon_hash = JSON.parse(response_2.body)
            name = pokemon_hash['forms'][0]['name']
            hp =  pokemon_hash['stats'][0]['base_stat']
            type = pokemon_hash['types'][0]['type']['name']
            Pokemon.new(name, hp, type)
        end
    end
    
end