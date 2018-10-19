class Duder::Character
    
    attr_accessor :lebowski, :jesus, :walter :char_hash, :char_quotes

#A character has many quotes. eg. An array
    def initialize(name)
       if self.name.include?("The Dude")
            @lebowski = name
       elsif self.name.include?("Jesus")
            @jesus = name
       else
            @walter = name
       end
    end

    
  

        
    
end