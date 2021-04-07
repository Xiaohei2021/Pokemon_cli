class CLI

    def start
        puts "Greetings and welcome to the all knowing Pokemon database, Pokeapi! Who do we owe the pleasure of meeting today (AKA please enter your name to get started)?"
            # API.get_generation
            input = user_input
            greet(input)


    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "So #{name}, do you have a favorite generation of Pokemon?
         Please enter 'yes' or 'no'. If you need to leave, enter 'e' to exit" 
        generation_menu
    end

    def generation_menu
        selection = user_input
        if selection == "yes"
            favorite_pokemon_generation
        elsif selection == "no"
            pokemon_generations
        elsif selection == "e"
            goodbye
        else 
            invalid
        end
    end

    def goodbye
        puts "You must be busy to be leaving us so soon, come back and visit us again anytime! "
    end

    def invalid
        puts "Your answer seems to be too ambiguous understand, please only enter yes or no"
        generation_menu
    end

    def favorite_pokemon_generation
        generations = ["Generation 1","Generation 2","Generation 3","Generation 4","Generation 5",
        "Generation 6","Generation 7","Generation 8"]
        puts "Please enter your favorite Pokemon Generation, enter integer 1-8.
         If you wish to leave at any time, enter 'e' to exit."
        generations.each.with_index(1) do |generation, index|
            puts "#{index}. #{generation}"
        end
        select_generation
    end

    def pokemon_generations
            generations = ["Generation 1","Generation 2","Generation 3","Generation 4","Generation 5",
            "Generation 6","Generation 7","Generation 8"]
            puts "Thats perfectly fine. Which Pokemon generaration would you like to get familiar with?
             Please enter a Pokemon Generation, enter integer 1-8
             If you wish to leave at any time, enter 'e' to exit."
            generations.each.with_index(1) do |generation, index|
                puts "#{index}. #{generation}"
            end
            select_generation
        end
    


    def select_generation 
        puts "which Pokemon or Pokemon moves would you like to learn more about?"

        selection = user_input
        
        case selection
        when selection == 1

        when selection == 2

        when selection == 3

        when selection == 4

        when selection == 5

        when selection == 6

        when selection == 7

        when selection == 8

        when selection == "e"
            goodbye
        else 
            invalid2
        end

        # if selection == "5"
        #     generation_detail
        # elsif selection == "e"
        #     goodbye
        # else 
        #     invalid2
        # end
    end

        def invalid2
            puts "There are currently only 8 generations of Pokemon, 
            please enter the integer 1 - 8 to select the corresponding generation."
            select_generation
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


end
