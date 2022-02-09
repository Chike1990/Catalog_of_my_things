require_relative 'item'
class Book < Item
  # rubocop:disable Metrics/ParameterLists
  def initialize(genre, author, publish_date, publisher, cover_state, label = 'undefined')
    # rubocop:enable Metrics/ParameterLists
    super(genre, author, publish_date, label)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super || @cover_state == 'bad'

    false
  end
end
