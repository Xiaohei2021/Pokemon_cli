class CLI

    def start
        puts "Greetings and welcome to the all knowing Pokemon database, Pokeapi! Who do we owe the pleasure of meeting today (AKA please enter your name to get started)?"
            API.get_data
            input = user_input
            greet(input)


    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "So #{name}, which Generation of Pokemon would you like learn more about? 
        Please enter 1-8 generation. If you need to leave, press E to exit"
    end

    def generation
        selection = user_input
        if selection == "1"

        elsif selection == "exit"
            goodbye
        else 
            invalid
        end
    end

        def goodbye
            puts "We hope you can  come back and visit us again soon! "
        end

        def invalid
            puts "We can't seem to find the Pokemon, Please check your spelling and try again "
            menu
        end

        def choice_of_generation

        end

        def pokemon_details(pokemon)
            puts "#{pokemon}"
        end






end
