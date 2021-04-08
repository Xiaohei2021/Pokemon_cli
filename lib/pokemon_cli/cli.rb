class CLI

    def start
        puts "Greetings and welcome to the all knowing Pokemon database, Pokeapi! Who do we owe the pleasure of meeting today (AKA please enter your name to get started)?"
            input = user_input
            greet(input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "So #{name}, which generation of Pokemon or Pokemon moves would like to learn more about. There are currently 8 Pokemon Generations:"
        API.get_generation
        
            display_generations
        
    end


    def display_generations
        # binding.pry
        Pokemon_Gens.all.each.with_index(1) do |generation, index|
            puts "#{index}. #{generation.name}"
        end

        get_pokemon
    end

    def get_pokemon

       
        puts "please enter integer 1-8 for the corresponding generation. 
        If you need to leave at any time, enter 'e' to exit" 
        
        input = user_input
        API.get_generationx(input)  
        
        print_generation_data
        
        user_menu
        # selected_generation

    end

    

    #  def user_menu 

    #     selection = user_input
    #     if selection == "1" || "2" || "3" || "4" || "5" || "6" || "7" || "8"
    #         selected_generation
    #     elsif selection == "e"
    #         goodbye
    #     else 
    #         invalid
    #     end
    # end
    
    # def goodbye
    #     puts "You must be busy to be leaving us so soon, come back and visit us again anytime! "
    # end

    # def invalid
    #     puts "There are currently only 8 generations of Pokemon, 
    #     please enter the integer 1 - 8 to select the corresponding generation or 'e' to exit"
    #     user_menu
    # end


    # def selected_generation
        
    #     puts "You have selected Generation #{}. Which Pokemon or Pokemon moves would you like to learn more about?
    #          If you wish to leave at any time, enter 'e' to exit."
    #     print_generation_data

    #     # input = user_input
    #  end

    

    def print_generation_data
            # binding.pry
        Generation_Data.all.each.with_index(1) do |data, index|
            puts "#{index}. #{data.name}"   
        end
      

    end

    # def generation_menu
    #     selection = user_input
    #     if selection == "yes"
    #         favorite_pokemon_generation
    #     elsif selection == "no"
    #         pokemon_generations
    #     elsif selection == "e"
    #         goodbye
    #     else 
    #         invalid
    #     end
    # end

    # def invalid2
    #     puts "Your answer seems to be too ambiguous understand, please only enter yes or no"
    #     # generation_menu
    # end

    # def user_selection

    #     selection = user_input
    #     generations = ["Generation 1","Generation 2","Generation 3","Generation 4","Generation 5",
    #     "Generation 6","Generation 7","Generation 8"]
    #     puts "Please enter your favorite Pokemon Generation, enter integer 1-8.
    #      If you wish to leave at any time, enter 'e' to exit."
    #     generations.each.with_index(1) do |generation, index|
    #         puts "#{index}. #{generation}"
    #     end
    #     select_generation
    # end


        # def goodbye2
        #     puts "We hope you have become more familiar with the world of Pokemon, come back and visit us again soon! "
        # end
       
        # def invalid2
        #     puts "We can't seem to find the Pokemon, Please check your spelling and try again "
        #     menu
        # end


end
