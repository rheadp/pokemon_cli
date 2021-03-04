class CLI
    #create a method for entry into CLI

    attr_accessor :alpha, :details, :poke_input

    def start
        puts "Welcome to the Poke Index!"
        API.get_pokemon
        home
        
    end

    def user_input
        gets.strip
    end

    def home
       puts "Type '1' to view a list of Pokemon"
       puts "Type 'quit' to quit the program"
       menu
    end

    def menu
        selection = user_input

        if selection == '1'
            pokemon_list
            menu
        elsif selection == 'quit'
            quit
        else 
            invalid 
        end
    end

    def quit
        puts "Thank you for checking out the Poke Index!"
    end

    def invalid
        puts "Invalid entry, please try again"
        home
    end

    def alphabetical_pokemon
        Pokemon.all.sort_by {|pokemon| pokemon.name}
    end

    def pokemon_list
        alphabetical_pokemon.each.with_index(1) {|pokemon, i| puts "#{i}. " "#{pokemon.name}"}
        pokemon_selection
    end

    def pokemon_selection
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Enter the number beside the Pokemon's name for more info"
        @poke_input = gets.strip
        if poke_input.to_i.between?(1,20)
            @alpha = poke_input.to_i-1
            pokemon_info(alpha)
        end
    end

    def pokemon_info(alpha)
        @details = alphabetical_pokemon[alpha]
        puts "*****************************"
        pokemon_name
        pokemon_hp
        pokemon_type
        puts "*****************************"
        pokemon_selection
    end
    
    def pokemon_name
        puts "Name: #{@details.name}"
    end 

    def pokemon_hp
        puts "HP: #{@details.hp}"
    end

    def pokemon_type
        puts "Type: #{@details.type}"
    end


end
