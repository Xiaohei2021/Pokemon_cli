class API 
    def self.get_generation
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/5/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
        binding.pry
        end
end

