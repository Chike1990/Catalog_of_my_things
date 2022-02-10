require '../classes/item.rb'

class Genre < Item
    attr_accessor :items, :genre
  
    def initialize(name)
      @id = Random.rand(110..1000)
      @name = name
      @items = []
    end
  
    def add_item(item)
      @items << item
      item.genre = self
    end
  end
