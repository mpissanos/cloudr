require 'pry'

class Duder::Character
    
    attr_accessor :characters, :char_hash

#A character has many quotes. eg. An array
@@characters = []

    def initialize(character, array)

        binding.pry

      @char_hash = { :name => character, :quotes => array } 
      @@characters << @char_hash
    end
    
    def self.save
        @@characters << self
    end
    
    def self.generate_quote(input)
        @@characters[input - 1][:quotes].value.sample
    end
binding.pry
  end