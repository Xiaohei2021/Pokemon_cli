class Generation_Data 
    @@all = []

    attr_accessor :name
    
    def initialize(name) # abilities, pokemon_species, version_groups
       
        @name = name
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
    
    # def self.find_by_selection()
    #     self.all.detect
    # end
    
    
end
