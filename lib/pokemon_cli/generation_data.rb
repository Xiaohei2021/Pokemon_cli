class Generation_Data 
    
    @@all = []
    attr_accessor :main_region, :moves, :pokemon_species, :version_groups
    
    def initialize(data_hash)
        # name, moves, pokemon_species, version_groups
      
        data_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
         end    

        # @name = name
        # @moves = moves
        # @pokemon= pokemon_species
        # @versions= version_groups
        save
    end
    
    def save
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    
end