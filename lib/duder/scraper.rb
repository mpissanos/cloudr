require 'pry'

class Duder::Scraper

    attr_accessor :lebowski_arr, :walter_arr, :jesus_arr, :spicoli_arr, :slater_arr, :page_url
    
    
    
    def self.scrape_lebowski
        
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        @info_url = 'http://hero.wikia.com/wiki/Jeffrey_Lebowski'
        doc = Nokogiri::HTML(open('https://en.wikiquote.org/wiki/The_Big_Lebowski'))
        @lebowski_arr = []
        doc.css('ul li').each do |quote|
            @lebowski_arr << quote.text
            @lebowski_quotes = @lebowski_arr[8..15]
        end
        Duder::Character.new('Jeffrey \'The Dude\' Lebowski', @lebowski_quotes, @info_url)
        
    end
  

    def self.scrape_walter
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        @info_url = 'http://thebiglebowski.wikia.com/wiki/Walter_Sobchak'
        doc = Nokogiri::HTML(open('https://en.wikiquote.org/wiki/The_Big_Lebowski'))
        @walter_arr = []
        doc.css('ul li').each do |quote|
            @walter_arr << quote.text
            @walter_quotes = @walter_arr[19..28]
        end
        Duder::Character.new('Walter Sobchak', @walter_quotes, @info_url)
    end
   
    def self.scrape_jesus
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        @info_url = 'http://villains.wikia.com/wiki/Jesus_Quintana'
        doc = Nokogiri::HTML(open('https://en.wikiquote.org/wiki/The_Big_Lebowski'))
        @jesus_arr = []
        doc.css('ul li').each do |quote|
            @jesus_arr << quote.text
            @jesus_quotes = @jesus_arr[29..32]
        end
        Duder::Character.new("Jesus Quintana", @jesus_quotes, @info_url)
    end

    def self.scrape_spicoli
        page_url = 'https://quotecatalog.com/communicator/jeff-spicoli/'
        @info_url = 'https://www.charactour.com/hub/characters/view/Jeff-Spicoli.Fast-Times-at-Ridgemont-High'
        doc = Nokogiri::HTML(open('https://quotecatalog.com/communicator/jeff-spicoli/'))
        @spicoli_arr = []
        doc.css('h3 a.quote__text').each do |quote|
            @spicoli_arr << quote.text
            @spicoli_quotes = @spicoli_arr
        end
        Duder::Character.new('Jeffrey Spicoli', @spicoli_quotes, @info_url)
    end
       
    def self.scrape_slater
        @slater_arr = []
        @page_url = 'https://theiapolis.com/movie-0USQ/dazed-and-confused/quotes/ron-slater.html'
        @info_url = 'https://www.imdb.com/title/tt0106677/characters/nm0168262'
        doc = Nokogiri::HTML(open('https://theiapolis.com/movie-0USQ/dazed-and-confused/quotes/ron-slater.html'))
        doc.css('blockquote').each do |quote|
            @slater_arr << quote.text
            @slater_quotes = @slater_arr
        end
        Duder::Character.new('Slater', @slater_quotes, @info_url)
    end
         
end
 