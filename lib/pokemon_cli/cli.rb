class CLI

    attr_accessor :alpha, :details, :poke_input

    def start
        puts "WELCOME TO THE POKE INDEX!!".yellow
        API.get_pokemon
        home 
    end

    def user_input
        gets.strip
    end

    def home
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".yellow
       puts "Type '1' to view a list of Pokemon".green
       puts "Type 'quit' to quit the program".blue
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
        puts "Thank you for checking out the Poke Index!".yellow
    end

    def invalid
        puts "Invalid entry, please try again".red
        home
    end

    def alphabetical_pokemon
        Pokemon.all.sort_by {|pokemon| pokemon.name}
    end

    def pokemon_list
        alphabetical_pokemon.each.with_index(1) {|pokemon, i| puts "#{i}. " "#{pokemon.name.green}"}
        pokemon_selection
    end

    def pokemon_selection
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".yellow
        puts ""
        puts "Enter the number beside the Pokemon's name for more info:".green
        puts "  (If you would like to exit the program, type 'quit')".blue
        @poke_input = gets.strip
        if poke_input.to_i.between?(1,20)
            @alpha = poke_input.to_i-1
            pokemon_info(alpha)
        elsif poke_input == 'quit'
            quit
        else 
            puts "Sorry! You entered a number out of range or the command is not understood!".cyan 
            puts "Please, try again!".magenta   
        end
    end

    def pokemon_info(alpha)
        @details = alphabetical_pokemon[alpha]
        puts ""
        puts "*****************************".yellow
        pokemon_name
        pokemon_hp
        pokemon_type
        puts ""
        puts "*****************************".yellow
        pokemon_selection
    end
    
    def pokemon_name
        puts "Name: #{@details.name}".blue
    end 

    def pokemon_hp
        puts "HP: #{@details.hp}".red
    end

    def pokemon_type
        puts "Type: #{@details.type}".magenta
    end


end
