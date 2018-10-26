require 'pry'

class Duder::Character
    
    attr_accessor :name, :quotes, :url

    @@char_array = []

    def initialize(character, array, url)
      @name = character
      @quotes = array
      @url = url
      @@char_array << self
    end
  
    def self.quote_generator(input)
        character = @@char_array[input - 1].name
        character_quote = @@char_array[input - 1].quotes.sample
        puts  "'#{character_quote}'".green
        puts "-#{character}".cyan
    end

    def self.all
      @@char_array
    end

    def self.list_quotes_by_character(input)
      @@char_array[input-1].name.quotes
    end

    def self.random(input)
      @@char_array.quotes.sample
    end

end