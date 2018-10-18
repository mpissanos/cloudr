class Cloudr::CLI

    def run
        Cloudr::Scraper.new.make_tracks
        start
    end

    def start
        puts ""
        puts "These are the top 50 hottest new tracks on Soundcloud right now!"
        Cloudr::Track.all
    end

end
