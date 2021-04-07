class API 
 
    def self.get_generationx(user_selection)
        x = user_selection
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
        generation = JSON.parse(response)
        #["pokemon_species"]
        generation.each do |data|
            P_Generation.new(generation)
        end
        binding.pry
    end

   

end

