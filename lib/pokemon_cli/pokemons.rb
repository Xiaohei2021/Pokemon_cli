class Pokemons
    @@all = []
    attr_accessor :name, :national_dex_entry_number, :egg_groups, :growth_rate

    def initialize(data_hash)#name, national_dex_entry_number, egg_groups, growth_rate
        
        data_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end     
        # @name =  pokemon_species
        # @dex_entry = national_dex_entry_number
        # @egg_group = egg_groups
        # @growth = growth_rate
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end