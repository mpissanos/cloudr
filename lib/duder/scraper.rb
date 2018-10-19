require 'pry'
class Duder::Scraper

    def self.start
        scrape_characters
        scrape_quotes
    end

    
#TODO Need to ensure iteration stops before "dialogue" section
    def self.scrape_characters
        doc = Nokogiri::HTML(open('https://en.wikiquote.org/wiki/The_Big_Lebowski'))
        
        doc.css('.mw-headline').each do |character|
            !if character.text.include?("Dialogue")

            Duder::Character.new(character.text)
        end
    end

    def self.scrape_quotes
        quote_arr = []
        
        doc = Nokogiri::HTML(open('https://en.wikiquote.org/wiki/The_Big_Lebowski'))
        doc.css('ul b').each do |quote|
            quote_arr << quote.text
            
            Duder::Quotes.new(quote_arr)
            
        end
    end

            
           

            
end
 