
require 'pry'

class Duder::Scraper

    attr_accessor :lebowski_arr, :walter_arr, :jesus_arr, :spicoli_arr, :slater_arr, :page_url
    
    def initialize
        self
    end
    
    def self.scrape_lebowski
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        @lebowski_arr = []
        doc.css('ul li b[0..8]').each do |quote|
            @lebowski_arr << quote.text
        end
        Duder::Character.new('Jeffrey \'The Dude\' Lebowski', ["13gehe", "24574577", "MEEE"])
    end
  

    def self.scrape_walter
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        @walter_arr = []
        doc.css('.ul li b[9..21]').each do |quote|
            @walter_arr << quote.text
        end
        Duder::Character.new( 'Walter Sobchak', @walter_arr)
    end
   
    def self.scrape_jesus
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        @jesus_arr = []
        doc.css('ul li b[22..26]').each do |quote|
            @jesus_arr << quote.text
        end
        Duder::Character.new("Jesus Quintana", @ljesus_arr)
    end

    def self.scrape_spicoli
        page_url = 'https://quotecatalog.com/communicator/jeff-spicoli/'
        doc = Nokogiri::HTML(open(page_url))
        @spicoli_arr = []
        doc.css('h3 a.quote__text').each do |quote|
            @spicoli_arr << quote.text
        end
        Duder::Character.new('Jeffrey Spicoli', @spicoli_arr)
    end
       
    def self.scrape_slater
        @slater_arr = []
        @page_url = 'http://www.moviequotedb.com/movies/dazed-and-confused/character_666.html'
        doc = Nokogiri::HTML(open(@page_url))
        doc.css('div.padded#quote').each do |quote|
            @slater_arr << quote.text
        end
        Duder::Character.new(character, @slater_arr)
    end
         
         
         
         
         
end
 