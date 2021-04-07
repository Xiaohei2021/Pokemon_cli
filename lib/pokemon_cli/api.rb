class API 
    def self.get_generation1
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/1/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
        binding.pry
    end

    def self.get_generation2
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/2/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
    end

    def self.get_generation3
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/3/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
    end

    def self.get_generation4
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/4/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
    end

    def self.get_generation5
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/5/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
    end

    def self.get_generation6
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/6/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
       
    end

    def self.get_generation7
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/7/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
    end

    def self.get_generation8
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/8/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
    end

end

