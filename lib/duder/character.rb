class Duder::Character
    
    attr_accessor :name, :lebowski, :jesus, :walter, :char_hash, :char_quotes

#A character has many quotes. eg. An array
    def initialize(name)
       if name.include?("The Dude")
            @lebowski = self.name
       elsif name.include?("Jesus")
            @jesus = self.name
       else
            @walter = self.name
       end
    end

    
  

        
    
end