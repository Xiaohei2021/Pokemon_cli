class CLI

    puts `clear`
    def start
        puts "Greetings and welcome to the all knowing Pokemon database, Pokeapi! Who do we owe the pleasure of meeting today (AKA please enter your name to get started)?"
            input = user_input
            greet(input) 
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts `clear`
        puts "So #{name}, which generation of Pokemon or Pokemon moves would like to learn more about. There are currently 8 Pokemon Generations:"
        API.get_generations
            display_generations
    end

    def display_generations
        # binding.pry
        Pokemon_Gens.all.each.with_index(1) do |generation, index|
            puts "#{index}. #{generation.name}"
        end
        
        generation_menu 
    end
    
    def generation_menu 

        puts "Please enter integer 1-8 for the corresponding generation.  If you need to leave at any time, enter 'e' to exit" 
       
        input = user_input
        if input == "e"
            goodbye
        elsif  input.to_i.between?(1,8)   
            API.get_generationx(input) 
            # generation_info
            print_generation_data
        else 
            invalid
        end
    end
    
    def print_generation_data
    puts `clear`
    puts "
    The available data for this generation are the following:
        
        1.Pokemon world region
        2.Pokemon Generation 
        3.Pokemons
        4.Pokemon moves
        5.Game Versions
        6.Exit
        \n
      
    Please enter integer 1 - 4 to learn about the corresponding data."
    get_data
    end
    
    def get_data
        input = user_input
        case input
        when "6"
            goodbye
        when "1"
            print_region
        when "2"
            generation_info
            # print_pokemon
        when "3"
            print_moves
        when "4"
            print_version
        else 
            invalid
        end
    end

    def print_region
    
    Generation_Data.all.each do |data|
        binding.pry
        puts "You have selected #{data.main_region}"   
    end
    #     puts "You have selected Generation #{Generation_Data.name}. Which Pokemon or Pokemon moves would you like to learn more about?
    #          If you wish to leave at any time, enter 'e' to exit."
    #     # print_generation_data
    #     generation_info

    #     # input = user_input
     end

     def generation_info
        Generation_Data.all.each do |data|
            puts "You have selected #{data.name.upcase}"   
        end
        # binding.pry
    end

    def goodbye
        puts "You must be busy to be leaving us so soon, come back and visit us again anytime! "
    end
 
    def invalid
        puts "There are currently only 8 generations of Pokemon, please enter the integers 1 - 8 to select the corresponding generation. Or enter 'e' anytime to exit"
        generation_menu
    end
end

    #def 
#         
    # end    

   
  
    # def invalid2
    #     puts "Your answer seems to be too ambiguous understand, please only enter yes or no"
    #     # generation_menu
    # end


        # def goodbye2
        #     puts "We hope you have become more familiar with the world of Pokemon, come back and visit us again soon! "
        # end
       
        # def invalid2
        #     puts "We can't seem to find the Pokemon, Please check your spelling and try again "
        #     menu
        # end

