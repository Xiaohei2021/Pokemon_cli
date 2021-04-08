class P_Generation
    @@all = []
    attr_accessor :generation
   
    def initialize(generaration) 
       @generation = generation
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
