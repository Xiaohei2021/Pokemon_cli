class API 
    def self.get_generation
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/5/")
        data = JSON.parse(response)
        binding.pry
        end
end

