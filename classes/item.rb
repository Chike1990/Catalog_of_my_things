require 'date'

class Item
  attr_accessor :genre
  
  def initialize(author, publish_date, genre=nil, label= 'undefined')
    @id = Random.rand(1...10_000_000)
    @archived = false
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
  end

  def add_genre(genre)
    @genre = genre
    @genre.item.push(self) unless @genre.include?(genre)
  end

  def can_be_archived?
    date = DateTime.now.year
    if date  - @publish_date > 10
      true
  end

  def move_to_archive
    @archived = true if can_be_archived?

    false
  end
end
