require 'pry'

class Duder::Character
    
    attr_accessor :char_hash, :char_array

    @@char_array = []

    def initialize(character, array)
      @char_hash = { :name => character, :quotes => array } 
      @@char_array << @char_hash
    end
    
    def self.quote_generator(input)
        generate = @@char_array[input - 1][:quotes]
        generate.sample
    end

  end