class Duder::Quotes

    attr_accessor :quote, :character

    @@all = []
    #An array of many quotes belong to a character
    def initialize(quote_arr)
        
        @@all << self
    end

end