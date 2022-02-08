require "./item"

class Game < Item
  attr_accessor :last_played_at, :multiplayer 

  def initialize(multiplayer, last_played_at)
    super()
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_achived?()
  end
end
