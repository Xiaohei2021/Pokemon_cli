class API 
 
    # def self.get_generationx
    #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/1/")
    #     generation = JSON.parse(response)
        
    #     generation.each do |data|
    #         P_Generation.new(moves)
    #     end

    #     binding.pry
    # end
    

    def self.get_generation
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/")
        gen_list = JSON.parse(response)["results"]
        gen_list.each do |gen_count|
            Pokemon_Gens.new(gen_count["name"])    
        end
        # binding.pry

    end

    def self.get_generation1
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/1/")
        generation_data = JSON.parse(response)
        # "moves","pokemon_species","version_groups"
        binding.pry
        generation_data.each do |data|
                Generation_Data.new(data["moves"],["pokemon_species"],["version_groups"])
            end
        
    end


    # def self.get_generationx(input)
    #     x = input
    #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
    #     generation_data = JSON.parse(response)["pokemon_species"]
    #     binding.pry
    #     # generation_data.each do |data|
             
    #     #         Generation_Data.new(data["name"])
    #         # end
        
    #     # generation_data = giant hash 
    #     # {"abilities"=>[],
    #     # "id"=>1,
    #     # "main_region"=>{"name"=>"kanto", "url"=>"https://pokeapi.co/api/v2/region/1/"},
    #     # "moves"=>[{"name"=>"pound", "url"=>"https://pokeapi.co/api/v2/move/1/"}...
    #     # }
    # end

    # def self.get_pokemon_moves()
    #     x = input
    #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
    #     generation = JSON.parse(response)
    # end      


        # def self.get_pokemon 
        #     x = input
        #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
        #     generation = JSON.parse(response)
        # end

end

