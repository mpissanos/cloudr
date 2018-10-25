require 'pry'

class Duder::Character
    
    attr_accessor :char_hash, :char_array

    @@char_array = []

    def initialize(character, array)
      @char_hash = { :name => character, :quotes => array } 
      @@char_array << @char_hash
    end
    
    def self.quote_generator(input)
        character = @@char_array[input - 1][:name]
        character_quote = @@char_array[input - 1][:quotes].sample
        puts  "'#{character_quote}'".green
        puts "-#{character}".cyan
    end

    def self.all
      @@charr_array
    end

    def self.list_quotes_by_character(input)
      @@char_array[input-1][:name][:quotes]
    end

    def self.random(input)
      @@charr_array[input.sample][:quotes].first
    end

end