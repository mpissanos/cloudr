class Cloudr::Track
    
    attr_accessor :position, :artist, :song_name, :track_url

    @@all = []

    def self.new_from_index(t)
        self.new(
            t.css("div.chartTrack__position sc-font-tabular").text,
            t.css('div.chartTrack__username sc-type-light sc-truncate sc-link-light').text,
            t.css("div.chartTrack__title sc-type-small sc-truncate a.sc-link-dark").text,
            t.css('div.chartTrack__title sc-type-small sc-truncate a').attribute('href').text
        )
    end

    def initialize(position, artist, song_name, track_url)
        @position = position
        @artist = artist
        @song_name = song_name
        @track_url = track_url
        @@all << self
    end

    def self.all
        @@all
    end
    

end