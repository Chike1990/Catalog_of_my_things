require 'colorize'
require_relative './add_game'

class GameShelf
  def initialize
    @add_game = AddGame.new
  end

  def show_menu
    puts 'What do you wish to do? Please enter the number of your choice'.blue
    puts '--------------------------------------------------------------------'.white
    puts '1.- List all games'.green
    puts '2.- List all authors'.green
    puts '3.- Add a game'.green
    puts '0.- Close App'.light_green
  end

  def start
    show_menu
    response = gets.chomp
    case response
    when '1'
      @add_game.fetch_games
      @add_game.list_games
      start
    when '2'
      puts 'Work in Progress check back letter'.red
    when '3'
      @add_game.fetch_games
      @add_game.add_game
      puts 'Game Created Succesfully'.light_blue
      start
    when '0'
      puts 'GoodBye'.blue
    else
      puts 'Not a valid option, please try again'.red
      start
    end
  end
end
