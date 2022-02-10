require_relative 'game.rb'
require_relative 'author.rb'

class App
  def initialize; end

  def run
    show_menu
  end

  def show_menu
    puts 'Select an option to create'
    puts '1.- Create a Book'
    puts '2.- Create a Book'
    puts '3.- Create a Book'
    puts '4.- Create a Game'
  end
end
