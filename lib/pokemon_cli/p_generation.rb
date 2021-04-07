class P_Generation
    @@all = []
    attr_accessor :moves, :pokemon_species, :version_groups
   
    
    def initialize(data_hash) # abilities, pokemon_species, version_groups
        data_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        # @abilities = abilities
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
