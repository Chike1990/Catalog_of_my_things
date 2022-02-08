require './item.rb'

class MusicAlbum < item
    def initialize(on_spotify: true)
        @on_spotify = on_spotify
    end

    def can_be_archived?
        
    end
end
