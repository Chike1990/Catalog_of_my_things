require_relative '../classes/item'

class MusicAlbum < Item
    attr_accessor :archive, :publish_date, :author, :on_spotify
  
    def initialize(publish_date, genre, author, on_spotify)
      super(author, publish_date, genre)
      @on_spotify = on_spotify
    end
  
    def can_be_archived?
      return true if super && @on_spotify == true
      false
    end
  end
