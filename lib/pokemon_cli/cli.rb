class CLI
    #create a method for entry into CLI

    def start
        puts "Welcome to the Poke Index!"
        sleep(2)
        home
        
    end

    def user_input
        gets.strip
    end

    def home()
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
        sleep(1)
    end

    def invalid
        puts "Invalid entry, please try again"
        sleep(1)
        home
    end

    def pokemon_list
        ["pokemon 1", "pokemon 2", "pokemon 3"].each.with_index(1) do |pokemon, i|
            puts "#{i}. #{pokemon}"
        end
        pokemon_selection
    end

    def pokemon_selection
        puts "Enter the number beside the Pokemon's name for more detail"

        selection = user_input
        
end
