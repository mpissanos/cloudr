require 'pry'
class Duder::Scraper

    attr_accessor :lebowski_arr, :walter_arr, :jesus_arr, :spicoli_arr, :slater_arr

    def self.scrape_lebowski
        @lebowski_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('ul li b[0..8]').each do |quote|
            @lebowski_arr << quote.text
        end
    end
         

    def self.scrape_walter
        @walter_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.ul li b[9..21]').each do |quote|
            @walter_arr << quote.text
        end
    end

    def self.scrape_jesus
        @jesus_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('ul li b[22..26]').each do |quote|
            @jesus_arr << quote.text
        end
    end

    def self.scrape_spicoli
        @spicoli_arr = []
        page_url = 'https://quotecatalog.com/communicator/jeff-spicoli/'
        doc = Nokogiri::HTML(open(page_url))

        doc.css('h3 a.quote__text').each do |quote|
            @spicoli_arr << quote.text
        end
    end
       
    

 
    def self.scrape_slater
        @slater_arr = []
        page_url = 'http://www.moviequotedb.com/movies/dazed-and-confused/character_666.html'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('div.padded#quote').each do |quote|
            @slater_arr << quote.text
        end
    end
         
         
         
         
         
end
 