require_relative '../classes/game'
require 'date'

describe 'test Game class' do
  before :each do
    @game = Game.new('Chike', true, 2020, 2005)
    @game1 = Game.new('Micheal', true, 2021, 2021)
  end

  it 'instantiates a Game' do
    expect(@game).to be_instance_of(Game)
  end

  it 'can be achieved' do
    expect(@game.can_be_archived?).to be(true)
  end

  it 'cannot be achieved' do
    expect(@game1.can_be_archived?).to be(false)
  end
end
