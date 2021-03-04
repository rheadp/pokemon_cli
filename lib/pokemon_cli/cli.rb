class CLI
    #create a method for entry into CLI

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
        puts "Enter the number beside the Pokemon's name for more detail"

        selection = user_input
        puts "#{selection}"
        #Pokemon.find_pokemon(selection)
    end
end
