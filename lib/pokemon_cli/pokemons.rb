class Pokemons
    @@all = []
    attr_accessor :name, :national_dex_entry_number, :egg_groups, :growth_rate

    def initialize(name, national_dex_entry_number, egg_groups, growth_rate)
        @name =  pokemon_species
        @dex_entry = national_dex_entry_number
        @egg_group = egg_groups
        @growth = growth_rate
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end