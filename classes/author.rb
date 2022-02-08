require relative './item.rb'
class Author
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = Random.rand(0..10000)
    @first_name = first_name
    @last_name = last_name
    items = []
  end

  add_item(item)
    @item << item
    item.author = self
  end
end
