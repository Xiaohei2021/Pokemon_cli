class P_Generation
    @@all = []
    attr_accessor :abilities, :pokemon_species, version_groups

    def initialize(abilities, pokemon_species, version_groups)
        @abilities = abilities
        @pokemon= pokemon_species
        @versions= version_groups
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end
