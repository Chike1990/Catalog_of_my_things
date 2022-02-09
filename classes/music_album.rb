require '../classes/item'

class MusicAlbum < Item
    attr_accessor :archive, :publish_date
  
    def initialize(publish_date, genre, author, on_spotify: false)
      super(author, publish_date, genre)
      @on_spotify = on_spotify
    end
  
    def can_be_archived?
      true if super && @on_spotify

      false
    end
  end
