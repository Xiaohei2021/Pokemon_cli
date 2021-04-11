class Generation_Data 
    @@all = []

    attr_accessor :name
    
    def initialize(moves, pokemon_species, version_groups) # moves, pokemon_species, version_groups
        @moves = moves
        @pokemon= pokemon_species
        @versions= version_groups
        save
    end
    
    def save
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    
end
