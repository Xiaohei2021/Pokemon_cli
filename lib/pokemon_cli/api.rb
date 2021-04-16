class API 
    
    def self.get_generations
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/")
        gen_list = JSON.parse(response)["results"]
        gen_list.each do |gen_count|
            Pokemon_Gens.new(gen_count["name"])    
        end
        # binding.pry
    end

    def self.get_pokemon_moves(input)
        x = input
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
        pokemon_moves = JSON.parse(response)["moves"]
        # binding.pry
        pokemon_moves.each do |data|
            Pokemon_Moves.new(data["name"])
        end
    
    end      

    def self.get_pokemon(input)
        x = input
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
        pokemons = JSON.parse(response)["pokemon_species"]
        # binding.pry
        pokemons.each do |data|
            Pokemons.new(data["name"])
        end
    end
        














    def self.get_generationx(input)
        x = input
        response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
        data = JSON.parse(response)
        # "{id, name, abilities, names, main_region, moves, pokemon_species, types,version_groups}"
        gen_data = data.slice("main_region", "moves", "pokemon_species", "version_groups")
        gen_data.each do |data|
            Generation_Data.new(data)
        end
        # binding.pry

    end

    # def self.get_generation1
    #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/1/")
    #     data = JSON.parse(response)
    #     gen_data = data.transform_keys! {|k| k.to_s}
        
    #             binding.pry

    #     gen_data.each do |data|
    #         Generation_Data.new(data)
    #     end
    # end

    # def self.get_generation1
    #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/1/")
    #     data = JSON.parse(response)
        
    #     gen_data = data.slice("main_region", "moves", "pokemon_species", "version_groups")
        
    #     gen_data.each do |data|
            
    #         Generation_Data.new(data)
    #     end
    #     binding.pry
    # end

end








    # def self.get_generationx(input)
    #     x = input
    #     response = RestClient.get ("https://pokeapi.co/api/v2/generation/#{x}/")
    #     generation_data = JSON.parse(response)["pokemon_species"]
    #     # binding.pry
    #     generation_data.each do |data| 
    #              Generation_Data.new(data["name"])
    #         end
    #     # generation_data = giant hash 
    #     # {"abilities"=>[],
    #     # "id"=>1,
    #     # "main_region"=>{"name"=>"kanto", "url"=>"https://pokeapi.co/api/v2/region/1/"},
    #     # "moves"=>[{"name"=>"pound", "url"=>"https://pokeapi.co/api/v2/move/1/"}...
    #     # }
    # end




 
