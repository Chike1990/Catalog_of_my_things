require './item'
require 'date'

class Game < Item
  attr_accessor :last_played_at, :multiplayer
  attr_reader :publish_date

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private
  
  def can_be_achived?(date)
    true if super.publish_date && @last_played_at > 2
    false
  end
end
