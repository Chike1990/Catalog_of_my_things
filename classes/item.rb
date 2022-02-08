require 'date'

class Item
  def initialize(genre, author, publish_date, label = 'undefined')
    @id = Random.rand(1...10_000_000)
    @archived = false
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
  end
  attr_reader :archived
  attr_writer :label

  def can_be_archived?
    date = DateTime.now.year
    return true if date - @publish_date.year > 10

    false
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
