require 'pry'
class Duder::Scraper

    def self.scrape_lebowski
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.mw-headline').each do |quote|
            quote_arr << quote
            Duder::Character.new(character.text, quote_arr)
        end
    end
         

    def self.scrape_jesus
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.mw-headline').each do |quote|
            quote_arr << quote
            Duder::Character.new(character.text, quote_arr)
        end
    end

    def self.scrape_walter
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.mw-headline').each do |quote|
            quote_arr << quote
            Duder::Character.new(character.text, quote_arr)
        end
    end

    def self.scrape_spicoli
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.mw-headline').each do |quote|
            quote_arr << quote
            Duder::Character.new(character.text, quote_arr)
        end
    end

    def self.scrape_smokey
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.mw-headline').each do |quote|
            quote_arr << quote
            Duder::Character.new(character.text, quote_arr)
        end
    end

    def self.scrape_slater
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        doc.css('.mw-headline').each do |quote|
            quote_arr << quote
            Duder::Character.new(character.text, quote_arr)
        end
    end
         
         
         
         
         
end
 