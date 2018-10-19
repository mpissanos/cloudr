require 'pry'
class Duder::Scraper


    
#TODO Need to ensure iteration stops before "dialogue" section
    def self.scrape_page
        quote_arr = []
        page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
        doc = Nokogiri::HTML(open(page_url))
        
        doc.css('.mw-headline').each do |character|
            if character.text.include?("Jeffrey \"The Dude\" Lebowski"|| "Jesus Quintana" || "Walter Sobchak")
            Duder::Character.new(character.text)
                doc.css('ul b').each do |quote|
                    Duder::Quotes.new(quote_arr << quote.text)
                end
            end
        end
    end
         

    # def self.scrape_quotes
    #     quote_arr = []
    #     page_url = 'https://en.wikiquote.org/wiki/The_Big_Lebowski'
    #     doc = Nokogiri::HTML(open(page_url))
    #     doc.css('ul b').each do |quote|
    #         quote_arr << quote.text
    #         Duder::Quotes.new(quote_arr)
    #     end
    # end
end
 