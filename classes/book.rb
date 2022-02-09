require_relative 'item'
class Book < Item
  # rubocop:disable Metrics/ParameterLists
  def initialize(author, publish_date, publisher, cover_state, genre = nil, label = 'undefined')
    # rubocop:enable Metrics/ParameterLists
    super(author, publish_date, genre, label)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super || @cover_state == 'bad'

    false
  end
end
