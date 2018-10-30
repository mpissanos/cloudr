require 'pry'

class Duder::Character
    
    attr_accessor :name, :quotes, :url, :char, :char_quote

    @@char_array = []

    def initialize(character, array, url)
      @name = character
      @quotes = array
      @url = url
      @@char_array << self
    end
  
    def self.quote_generator(input)
      char = @@char_array[input - 1].name
      char_quote = @@char_array[input - 1].quotes.sample
      puts  "'#{char_quote}'".green
      puts "-#{char}".cyan
    end

    def self.all
      @@char_array
    end


end