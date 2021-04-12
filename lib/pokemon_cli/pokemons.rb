class Pokemons
    @@all = []
    attr_accessor :name
   
    def initialize(name)
        @name = name 
          save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end

    #     @@all = []
#     attr_accessor :name, :national_dex_entry_number, :egg_groups, :growth_rate

#     def initialize(data_hash)#name, national_dex_entry_number, egg_groups, growth_rate
        
#         data_hash.each do |key, value|
#             self.send("#{key}=", value) if self.respond_to?("#{key}=")
#         end     
    
#     end

#     def save
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

# end