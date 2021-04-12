class CLI3
    

    puts `clear`
    def start
        # Pokeapi_title.show_title
        puts "Greetings and welcome to the all knowing Pokemon database, Pokeapi! Who do we owe the pleasure of meeting today (AKA please enter your name to get started)?"
            input = user_input
            greet(input) 
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts `clear`
        puts "So #{name}, would you like to know more about Pokemon or Pokemon moves? Please enter 2 to learn about pokemons or 3  to learn about pokemon moves."  
        selection_menu
    end

    def selection_menu
       
        puts"
        1. I want to exit the program.
        2. I want to learn more about different Pokemons.
        3. I want to learn more about different Pokemon Moves."
  
        input = user_input
        if input == "1" 
            goodbye          
        elsif input == "2"
            display_generations_pokemon
        elsif input == "3"
            display_generations_moves
        else
            invalid3
        end
    end

    def display_generations_moves
        Pokemon_Gens.all.clear
        # binding.pry
        API.get_generation
        puts "which generation of Pokemon moves would like to learn more about. There are currently 8 Pokemon Generations."       
   
        Pokemon_Gens.all.each.with_index(1) do |generation, index|
            puts "#{index}. #{generation.name}"
        end
        get_pokemon_moves
    end

    def display_generations_pokemon
        Pokemon_Gens.all.clear

        puts "which generation of Pokemon or would like to lear1n more about. There are currently 8 Pokemon Generations." 
        API.get_generation
        
        Pokemon_Gens.all.each.with_index(1) do |generation, index|
            puts "#{index}. #{generation.name}"
        end
        get_pokemon
    end
    
    def get_pokemon_moves
        
        puts "Please enter integer 1-8 to see the Pokemon in the corresponding generation. If you need to leave at any time, enter 'e' to exit" 

        input = user_input
        if input == "e"
            goodbye
        elsif  input.to_i.between?(1,8)   
            API.get_pokemon_moves(input) 
            print_moves
        else 
            invalid
        end
    end

    def get_pokemon
        
        puts "Please enter integer 1-8 to see the Pokemon in the corresponding generation. If you need to leave at any time, enter 'e' to exit" 
        
        input = user_input
        if input == "e"
            goodbye
        elsif  input.to_i.between?(1,8)   
            API.get_pokemon(input) 
            print_pokemons
        else 
            invalid
        end
    end

    def print_moves

        Pokemon_Moves.all.each.with_index(1) do |moves, index|
            puts "#{index}. #{moves.name}"
        end
       
        branch_menu
    end

    def print_pokemons

        Pokemons.all.each.with_index(1) do |pokemon, index|
            puts "#{index}. #{pokemon.name}"
        end
        branch_menu
    end

    def branch_menu
        puts "This is all the Pokemon moves/Pokemons for this generation. Would you like to go back to the Generation selection Menu and learn about a Pokemon move or Pokemon in a different generation? Enter 'y' to return to the Poke generation menu, 'n' to exit the program."
        
            input = user_input
            if input == "y"
                
                selection_menu
            elsif  input == "n"   
               goodbye
            else 
                invalid
            end
        end

        def goodbye
            puts "You must be busy to be leaving us so soon, come back and visit us again anytime! "
        end
    
        def invalid
            puts "There are currently only 8 generations of Pokemon, please enter the integers 1 - 8 to select the corresponding generation. Or enter 'e' anytime to exit"
            get_pokemon
        end

        def invalid3
            puts "Please only enter the integer 1 or 2, or 'e' to exit the program"    
            selection_menu
        end

end

# def print_generation_data

    #     puts "The following data are available for this generation:
    #         1. Pokemon moves
    #         2. Pokemons
    #         3. Applicable Game versions
    #         Please make a selection by entering the corresponding integer 1 - 3.  To go back to the generation selection menu, please enter 'g' or enter 'e' anytime to exit the API"  

    #     input = user_input
        
    #     case input
    #     when "e"
    #         goodbye
    #     when 1
    #         API.get_generationx1(input) 
    #         print_generation_data
    #     when 2 
    #     when 3
    #     else 
    #         invalid
    #     end
        

    # select_generation_data
    # end

    # def select_generation_data
        
    # puts "This is all the Pokemon moves, Pokemons, and Pokemon game versions for this generation. Which Pokemon move or Pokemon would you like to learn more about from this generation?" 
    # #     # branch_menu

    # end

  

    # def get_pokemon_moves
    #     puts "This is all the Pokemon moves for this generation. Would you like to go back to the Generation selection Menu and learn about a Pokemon move or Pokemon in a different generation? Enter 'y' to rettunr to the Poke generation menu, 'n' to exit the program."

    #     input = user_input
    #     if input == "y"
    #         display_generations
    #     elsif  input == "n"   
    #        goodbye
    #     else 
    #         invalid
    #     end
    # end

    # def display_pokemon_moves

    
    # end

    # def display_pokemon_data

    # end

