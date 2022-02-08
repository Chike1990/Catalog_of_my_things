require 'date'

class Item
  attr_accessor :genre
  
  def initialize(author, label, publish_date)
    @id = Random.rand(1...10_000_000)
    @archived = false
    @genre = nil
    @author = author
    @label = label
    @publish_date = publish_date
  end

  def add_genre(genre)
    @genre = genre
    @genre.item.push(self) unless @genre.include?(genre)
  end

  def can_be_archived?
    date = DateTime.now
    true if date.year - @publish_date.year > 10
    false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
