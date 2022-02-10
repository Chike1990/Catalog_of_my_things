require 'date'

class Item
  def initialize(author, publish_date, genre = nil, label = 'undefined')
    @id = Random.rand(1...10_000_000)
    @archived = false
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
  end
  attr_accessor :genre
  attr_reader :archived, :author, :publish_date
  attr_writer :label

  def add_genre(genre)
    @genre = genre
    @genre.item.push(self) unless @genre.include?(genre)
  end

  def can_be_archived?
    date = DateTime.now.year
    return true if date - @publish_date > 10

    false
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end