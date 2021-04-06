class Pokemon 
    @@all
    attr_accessor :name

    def initialize

    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end
