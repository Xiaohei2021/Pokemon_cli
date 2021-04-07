class API 
    def self.get_generation
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/5/")
        generation = JSON.parse(response)["pokemon_species"]
        p_g
        binding.pry
        end
end

