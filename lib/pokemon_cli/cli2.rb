class CLI2

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
        puts "Please enter integer 1-8 for the corresponding generation.  If you need to leave at any time, enter 'e' to exit" 
       
        input = user_input
        if input == "e"
            goodbye
        elsif  input.to_i.between?(1,8)   
            API.get_generationx(input) 
            print_generation_data
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

    def print_generation_data
            # binding.pry
        Generation_Data.all.each.with_index(1) do |data, index|
            puts "#{index}. #{data.name}"   
        end

    end
end