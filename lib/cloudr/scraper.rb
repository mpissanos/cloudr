
class Scraper

    def get_page
        Nokogiri::HTML(open("https://soundcloud.com/charts/new?genre=all-music&country=US"))
    end

    def tracks_index
        self.get_page.css('ul.lazyLoadingList__list sc-list-nostyle sc-clearfix')
    end

    def make_tracks
        tracks_index.each do |t|
            Cloudr::Track.new_from_index(t)
        end
    end
end
