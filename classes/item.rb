require 'date'

class Item
  def initialize( genre, author, label, publish_date)
    @id = Random.rand(1...10000000)
    @archived = false
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
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

