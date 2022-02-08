require relative 'item'

class Genre
    attr_accessor :name, :items
    def initialize(name)
        @id = Random.rand(10...250)
        @name = name
        @items = []
    end

    def add_item(item)
        items << item
        item.genre = self

    end
end