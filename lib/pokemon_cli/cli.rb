class CLI

    def start
        puts "Greetings and welcome to the all knowing Pokemon database, Pokeapi! Who do we owe the pleasure of meeting today (AKA please enter your name to get started)?"
        input = user_input

    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "So #{name}, which Pokemon would you like get more familiar with?"
    end

    def menu
        selection = user_input
        if selection == "y"

        elsif selection == "exit"

        else 

        end

        def goodbye
            puts "We hope you are more familiar with the Pokemon, please come back and visit us again soon! "
        end

        def invalid
            puts "We can't see the Pokemon, Please check your spelling and try again "
        end



    end





end
