class Duder::CLI

    def run
        Duder::Scraper.scrape_page
        Duder::Text.banner
    end

end
