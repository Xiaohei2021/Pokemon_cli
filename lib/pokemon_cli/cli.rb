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
        puts "So #{name}, which Generation of Pokemon or pokemon moves would you like learn more about? 
        Please enter 1-8 generation. If you need to leave, press E to exit"
    end

    def generation_menu
        selection = user_input
        if selection == "5"

        elsif selection == "exit"
            goodbye
        else 
            invalid
        end
    end


    def goodbye
        puts "You must be busy to leave us so soon, come back and visit us again soon! "
    end

    def invalid
        puts "There are currently only 8 generations of Pokemon, please pick among generation 1 - 8 "
        generation_menu
    end

        # def goodbye
        #     puts "We hope you have become more familiar with the world of Pokemon, come back and visit us again soon! "
        # end

        # def invalid
        #     puts "We can't seem to find the Pokemon, Please check your spelling and try again "
        #     menu
        # end

        # def choice_of_generation
        #     selection = input

        # end

        def pokemon_generation
             ["Generation 1","Generation 2","Generation 3","Generation 4","Generation 5",
             "Generation 6","Generation 7","Generation 8"]
        end






end
