class Label
  def initialize(title, color)
    @id = Random.rand(1...10_000_000)
    @title = title
    @color = color
    @items = []
  end
  attr_reader :items, :color

  def add_item(item)
    @items << item
    item.label = self
  end
end
