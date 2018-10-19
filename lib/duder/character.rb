require 'pry'

class Duder::Character
    
    attr_accessor :character, :lebowski, :jesus, :walter, :char_hash, :char_quotes, :quote_arr

#A character has many quotes. eg. An array
@@characters = []

    def initialize(character)
       @character = character
    
    end

    def self.save
        @@characters << self

    end

    def self.choose_character(input)
        @@characters[:input]

    end

  end